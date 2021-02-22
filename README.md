# Archonnect API Server

> A Rails API end-point application consisting of a listing of house plans by freelance architects that are up for bidding.

## Built With

- Ruby v2.7.2
- Ruby on Rails v5.2.4.4
- PostgreSQL 12.4
- VSCode
- Terminal
- Rubocop
- RSpec
- Active Admin

## Server

[API](https://api-archonnect-mvp.herokuapp.com)

## Setup

```
  - **Terminal(Mac & Linux) or Command Prompt(Windows)**: This is where you will run all commands.
  - **Clone**: clone this repository to your local machine.
  - **Ruby Enviroment**: if you do not have ruby installed visit this [link](https://www.ruby-lang.org/en/documentation/installation/) to install.
  - **PostgresSQL**: if you do not have postgreSql installed visit this [link](https://www.postgresql.org/) to install.
  - **Rails**: install rails gem by running command *$ gem install rails* -v 5.2.4 in your terminal.
  - **bundle**: run $ bundle install. This installs all gems declared in the Gemfile
  - **Database Creation**: run *$ rails db:create* in the terminal to create database on your local machine
  - **Database Migration**: run *$ rails db:migrate* in terminal to run database migrations on your local machine
```

### Usage
Start server with:

```
    rails server -p 3001
```

Open `http://localhost:3001/` in your browser.

### Testing

```
    bundle exec rspec
```

### Deployment

> To deploy heroku 
  - Create a heroku account [here](https://www.heroku.com/)
  - In your root folder run the following commands
  ```
   $ heroku login: Log into heroku CLI in your browser
   $ heroku create
   $ git push heroku master
   $ heroku run rails db:migrate
   $ heroku run rails c: "Create your entries with rails console commands"
  ```


## Authors ![Hireable](https://img.shields.io/badge/HIREABLE-YES-yellowgreen&?style=for-the-badge)

👤 **Elbie Moonga**

- GitHub: [@Elbie-Em](https://github.com/Elbie-em)
- Twitter: [ElbieEm](https://twitter.com/ElbieEm)
- LinkedIn: [elbie-moonga](https://www.linkedin.com/in/elbiemoonga) 

---

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Elbie-em/archonnect_mvp_backend/issues).

## Show your support

Give me a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://microverse.org)

---

## 📝 License

This project is [MIT](/LICENSE) licensed.

---

