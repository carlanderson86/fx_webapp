# README

FX Application

#### Assumptions / Limitations

* Currently runs using one base currency at the moment, can be configured

#### Below are the requirements for the system running this application

* System dependencies
    * MySQL 5.7
    * Rails 5.1.4 
    * Ruby 2.4.2

* Application Setup (Development)
    * Setup ENV Variables
        * DATABASE_USER
        * DATABASE_PASSWORD
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
        * DATABASE_USER
        * DATABASE_PASSWORD
    * Run the below commands in terminal
        * bundle install
        * RAILS_ENV=production rake db:create
        * RAILS_ENV=production rake railties:install:migrations
        * RAILS_ENV=production rake db:migrate db:seed
        * RAILS_ENV=production bundle exec rake assets:precompile
    * Start the server
        * rails s Puma -e production


