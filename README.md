# U.S. Go Congress

A maintainable web app for the U.S. Go Congress.
Copyright (c) 2010-2021 American Go Association

[![Maintainability](https://api.codeclimate.com/v1/badges/7cd3a1aa0823c9d00c0c/maintainability)](https://codeclimate.com/github/usgo/gocongress/maintainability)

## Support

[Nate Eagle](mailto:nate.eagle@usgo.org) is the current U.S. Go
Congress webmaster. You can email him or create an issue here with any
questions, concerns, or feedback. Contributions to the site are welcome and
encouraged: if you know some Ruby, JavaScript, or even just HTML/CSS, creating
a pull request is a great way to become part of the team.

## Contribute

1. Prerequisites
   1. Linux (eg. [Ubuntu][15] 16.04+) or Mac OS 10.8+
   1. Proficiency with [git][13] and [sql][14]
   1. Read [Getting Started with Rails][16]
   1. [Fork and clone][8] this github repo
1. Install the Ruby version specified in `.ruby-version`.
   - Use [rbenv][9] or [compile from source][10]
1. Install [PostgreSQL 9.4.4+][5]
   1. e.g. `brew install postgresql`
   1. Practice connecting using the command-line client, `psql`
      - ["permission denied"][3]
      - [Client Connection Problems][4]
   1. Make sure you have a [role][19] that can create tables
1. App dependencies
   1. Install a js runtime
      - macs come with [JavaScriptCore][20] (part of webkit)
      - linux or mac: [node][11] (`apt-get nodejs`)
   1. Install [ImageMagick][22] CLI
      - eg. `brew install imagemagick`
      - Make sure CLI tools are on your PATH with eg. `which convert`
   1. Install ruby [gems][21] using [bundler][12]
      1. `gem install bundler`
      1. `bundle install`
      1. If a gem fails to install, it may be missing native libraries
         1. [nokogiri][17] needs libxml2 and libxslt
         1. [pg][18] needs libpq-dev
1. App configuration
   1. [Configure rails to talk to your database][6]
      1. `cp config/database.example.yml config/database.yml`
   1. `cp .env.example .env` (see Configuration below)
   1. If all is well, `bin/rake -T` should list rake tasks
1. Run the App locally
   1. Run the script and answer the prompts: `rails runner script/admin_tasks/create_user.rb`
   1. Run the app: `rails server`
   1. Open the app in your browser: `http://localhost:3000`
   1. Sign in using the email and password you provided for your new user
   1. Do some developing!
1. Run the tests
   1. `bin/rails db:setup`
   1. `RAILS_ENV=test bin/rails db:seed`
   1. `bin/rake` will run the tests. If they all pass, you're good to go.
1. Submit your contribution
   1. Write a [spec][7] that describes your contribution
   1. Push your changes to your [fork][8] on github
   1. Submit a pull request

## Configuration

`ENV` variables are stored in a `.env` file, which is git-ignored.
Most of these variables don't belong in source control because they
are secret. Others vary by deployment level. This file will be
loaded by the `dotenv` gem.

For local development, `cp .env.example .env` to get started.
For `stage` and `production` use [heroku config][2].

## Email

### Sent by Rails

See doc/smtp.md

### Received by gocongress.org staff

Email for accounts in the gocongress.org domain is managed through
Google Apps. nate.eagle@usgo.org has access to manage these accounts.

## Thanks

Special thanks to Lisa Scott, who helped invent, and tirelessly tested, the
first year's site in 2011. Special thanks to Jared Beck, who provided
mentoring and assistance for the 2014 site. Special thanks to Tim Hoel and
Jared Beck who both provided mentoring and assistance for the 2015 site.
Special thanks to Rex Cristal, for taking over maintenance of the site from
2015 – 2019!

- 2022: Jared Bek, Nate Eagle, Eric Wainwright
- 2021: Jared Beck, Michael Hiiva, Nate Eagle, Steve Colburn
- 2020: Rex Cristal, Lisa Scott
- 2019: Gregory Steltenpohl, Nate Eagle, Steve Colburn, Lisa Scott, Dave Weimer
- 2018: Nate Eagle, Joel Cahalan, Steve Colburn, Andrew Jackson
- 2017: Andrew Jackson, Jared Beck, Steve Colburn, Lisa Scott, Ted Terpstra, Les Lanphear
- 2016: Rex Cristal, Walther Chen, Sun Chun
- 2015: Tim Hoel, Jared Beck, Andrew Jackson, Josh Larson, Steve Colburn, Rex Cristal
- 2014: Jared Beck, Andrew Jackson, Matthew Hershberger, Chris Kirschner, Steve
  Colburn, Rex Cristal
- 2013: Chris Kirschner, Judy Debel
- 2012: Arlene Bridges, Bob Bacon, Steve Colburn
- 2011: Lisa Scott, Alf Mikula, Brian David, Andrew Jackson, Steve Colburn

[1]: http://blog.daviddollar.org/2011/05/06/introducing-foreman.html
[2]: https://devcenter.heroku.com/articles/config-vars
[3]: http://bit.ly/YJFlPQ
[4]: http://www.postgresql.org/docs/9.4/interactive/server-start.html#CLIENT-CONNECTION-PROBLEMS
[5]: http://www.postgresql.org/docs/9.4/interactive/index.html
[6]: http://edgeguides.rubyonrails.org/configuring.html#configuring-a-database
[7]: https://www.relishapp.com/rspec
[8]: https://help.github.com/articles/fork-a-repo
[9]: https://github.com/sstephenson/rbenv
[10]: https://www.ruby-lang.org/en/downloads/
[11]: http://nodejs.org/
[12]: http://bundler.io/
[13]: http://git-scm.com/
[14]: http://www.postgresql.org/docs/9.4/static/sql.html
[15]: http://www.ubuntu.com/
[16]: http://guides.rubyonrails.org/
[17]: http://nokogiri.org/tutorials/installing_nokogiri.html
[18]: https://bitbucket.org/ged/ruby-pg/wiki/Home
[19]: http://www.postgresql.org/docs/9.4/interactive/user-manag.html
[20]: http://trac.webkit.org/wiki/JavaScriptCore
[21]: http://guides.rubygems.org/
[22]: https://imagemagick.org/
