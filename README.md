# TrackMe

## Technologies used

* Rails (Rails 6.0.2.1)
* Ruby (ruby 2.6.3)
* Javascript
* JQuery (jquery-3.4.1)
* Bootstrap (bootstrap 4.4.1)
* Mysql (mysql 8.0.19)

## Some of the gems used for this project...

* [Mysql2](https://github.com/brianmario/mysql2)
* [Bootstrap Ruby Gem](https://github.com/twbs/bootstrap-rubygem)
* [Jquery rails](https://github.com/rails/jquery-rails)

## Setup!

Once we have this repo cloned, we have to run the next command in the root of our project:

```bash
bundle install
```

once we do this, the command will install all the dependencies of the project.

Now, we have to set up our database, all we need to do is create the shell of our database because active directory will help us creating all the tables and relations in our database, for this we must acces mysql by terminal or workbench and run the next command:

```sql
CREATE DATABASE 'trackme';
```

Now, we have to acces the file `config/database.yml` in the project to configure the databse credentials:

```yml
default: &default
  adapter: mysql2
  username: USER			#database user (ej. root)
  password: PASSWORD	#database user password
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  database: DBNAME		#Here we have to put the name of the database we created on mysql
  
test:
  <<: *default
  database: DBNAME		#Same in here

production:
  <<: *default
  database: DBNAME		#Same in here

```

**Note:** A better practice its to use different instances of the same database for a more secure enviroment.

Once we did that, we have to create a migration of the database stablished in our project (`db/migrate/20200223031651_create_logs.rb`), for this, we have to run the next command in our terminal on the root of the project:

```bash
rails db:migrate
```

This will generate the schema on our database.

Lastly we have to run our server, for this we have to run the next command on the root of our project:

```bash
rails s
```

And thats it, our project is live in a development server.

