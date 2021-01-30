# README

This README documents whatever steps are necessary to get the
application up and running.

## Ruby version
Ruby 2.7.2

## System dependencies
* Ruby
* Rails
* PostgreSQL

## Configuration
Created rails API project with PostgreSQL database.
Skipped minitest (T), actioncable (C), actionmailer (M) and activestorage

```
rails new woetflow-demo-kanban-board-api -T -C -M --skip-active-storage -d=postgresql --api
```

## Database creation (PostgreSQL)
Created database user 'name' with password
```
sudo -u postgres createuser -s name -P
```

Added database user password as an environment variable
```
echo 'export WOETFLOW_DEMO_KANBAN_BOARD_DATABASE_PASSWORD="PostgreSQL_Role_Password"' >> ~/.bashrc
```

Export the variable for current session
```
source ~/.bashrc
```

Add user configuration to database.yml
```
...
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: barry
  password: <%= ENV['WOETFLOW_DEMO_KANBAN_BOARD_DATABASE_PASSWORD'] %>

development:
  <<: *default
  database: woetflow_demo_kanban_board_api_development
...
```

Create databases from database.yml
```
rails db:create
```

## Database initialization (PostgreSQL)
Restart database server
```
sudo service postgresql restart
```

## Deployment instructions
Manually deploy application on Heroku
```
git push heroku main
```