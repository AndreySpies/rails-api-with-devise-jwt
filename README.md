# README

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.0]
- Rails [7.0.8]

##### 1. Check out the repository

```bash
git clone git@github.com:AndreySpies/rails-api-with-devise-jwt.git
```

##### 2. Install dependencies

To install the gems, run the following command

```bash
bundle
```

##### 3. Create a .env file and set this variables:

```bash
POSTGRES_DEVELOPMENT_DATABASE=your_database_name
POSTGRES_TEST_DATABASE=your_database_name_test
POSTGRES_USER=postgres_user
POSTGRES_PASSWORD=postgres_password
POSTGRES_HOST=localhost
```

##### 4. Create your keys for the app

Run the following command (if on VSCode) and then close the opened file:

```bash
EDITOR="code --wait" rails credentials:edit
```

##### 5. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rails db:create db:migrate
```

##### 6. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you should be able to send a request to http://localhost:4000/health_check and receive a `status: 200`.
