class RegistrationsController < Devise::RegistrationsController
  before_filter :remove_year_from_params, :except => [:create]
  before_filter :assert_year_matches_route

  protected

  # We `remove_year_from_params` on all actions except create.
  # This allows us to leave user.year attr_accessible, which is very
  # helpful during the create action.  This implementation (deleting
  # the param) is much easier than completely re-writing
  # Devise::RegistrationsController.create()
  def remove_year_from_params
    if params_contains_user_attr :year
      Rails.logger.warn "WARNING: Removing protected attribute: year"
      params[:user].delete :year
    end
  end

  # `assert_year_matches_route` should prevent visitors from, for example,
  # using the 2012 registration form to create a 2011 user.
  def assert_year_matches_route
    if params_contains_user_attr(:year) && params[:user][:year].to_i != @year.to_i
      raise "Invalid year in params: Expected #{@year}, found #{params[:user][:year]}"
    end
  end

  private

  def params_contains_user_attr(attribute)
    params.key?(:user) && params[:user].key?(attribute)
  end

end