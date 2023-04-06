# Dimblogs

This is a project that contains the backend data for the project

<br/>
<br/>

## Create migrations

Create migration files useing the command below

```bash
rails g migration <name_of_migration>
```

> Migrations will be saved in `./db/migrations`

<br/>
<br/>

## Run migrations
This will run all the migrations in respective order
```bash
rails db:migrate
```

<br/>
<br/>

## Running the database seeds

To initially run the database seed execute the following

```bash
rails db:seed
```

To run the database seed again without duplicating the data execute the following

```bash
rails db:seed:reset
```

<br/>
<br/>

## Running the application

Interact with the application through the CLI

> Creates a pry session to interact with our models

```bash
rails console
```

> Get the server up and running

```bash
  rails server
```
This will watch for changes you make inside the application.

## Deployment
1. Create a `.ruby-version` file in the root directory of the project and input your ruby version
> 3.1.2
<br/>

2. Create a `Procfile` in the root directory of the project and input
> web: bundle exec puma -e production

3. Add the postgresql and puma gem in `Gemfile` production
> group :production do
      gem 'puma', '~> 6.1', '>= 6.1.1'
      gem 'pg', '~> 1.4', '>= 1.4.6'
  end
  
4. Create a `puma.rb` file in thr config folder and input
  > port ENV['PORT'] || 4567

5. Edit the production section in `database.yml`
> production:
  adapter: postgresql
  database: <database_name>
  username: <username>
  password: <password>
  host: <host>
  port: <port>
  pool: 5
  
6. Change environment from development to production in `environment.rb`
  
7. Open railway app and Deploy from github repository (will start building immediately connected)
  
8. Set up your project locally
  
9. Copy the `railway link <auto-generate-link for you project>` and paste it in your local project terminal window
  
ailway run bundle exec rake db:seed
  ```

  
#### Help
Incase of any problems reach out through the contact links below.

## Authors
- Emmanuel Chacha,

  
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
Copyright (c) 2023 All rights reserved

All rights reserved. This project is licensed under the terms of the MIT license.

