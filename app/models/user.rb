class User < ActiveRecord::Base

	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable, :lockable and :timeoutable
	devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable
	
	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name, :is_admin
	
	validates_presence_of :full_name

	# Use validates_inclusion_of for booleans
	validates_inclusion_of :is_admin, :in => [true, false]

	# Devise seems to magically supply the following two validations -Jared
	#validates_presence_of :email
	#validates_uniqueness_of :email
		
	has_many :user_jobs
	has_many :jobs, :through => :user_jobs

end
