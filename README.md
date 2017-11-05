# README

FX Application

The FX gem can be installed by running:
gem install [path to fx gem]

There is a version of the gem in the zip provided.


#### Assumptions / Limitations

* Currently runs using one base currency at the moment, can be configured

#### Below are the requirements for the system running this application

* System dependencies
    * MySQL 5.7
    * Rails 5.1.4 
    * Ruby 2.4.2

* Application Setup (Development)
    * Setup ENV Variables
        * FX_WEBAPP_DATABASE_USER
        * FX_WEBAPP_DATABASE_USER
    * Run the below commands in terminal
        * bundle install
        * rake db:create
        * rake railties:install:migrations
        * rake db:migrate db:seed
    * Start the server
        * rails s Puma
    
* Application Setup (Production)
    * Setup ENV Variables
        * SECRET_KEY_BASE
        * FX_WEBAPP_DATABASE_USER
        * FX_WEBAPP_DATABASE_USER
    * Run the below commands in terminal
        * bundle install
        * RAILS_ENV=production rake db:create
        * RAILS_ENV=production rake railties:install:migrations
        * RAILS_ENV=production rake db:migrate db:seed
        * RAILS_ENV=production bundle exec rake assets:precompile
    * Start the server
        * rails s Puma -e production


