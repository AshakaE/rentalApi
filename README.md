# RENTALS API BUILT WITH RAILS 6

> A car rental API built with Rails, it authenticates and authorizes with JWT. Using this API, users can rent certain cars and get a fixed price based on the duration.

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.1.3
- PostgreSQL v12.5

## Current API Endpoints

| Endpoint                | Functionality                |
|-------------------------|------------------------------|
| POST /signup            | Signup                       |
| POST /login             | Login                        |
| GET /users              | show user                    |
| PUT /user/:id           | Update a user                |
| DELETE /user/:id        | Update user account          |
| GET /api/v1/cars        | List all cars                |
| GET /api/v1/bookings    | show user bookings           |
| POST /api/v1/bookings   | book a car                   |
| PUT /api/v1/bookings    | update booking               |
| DELETE /api/v1/bookings | delete booking               |

## Live Demo

TBA

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.7.2
Rails: 6.1.3
Postgres: >=12.5

### Setup

- git clone `git@github.com:AshakaE/rentalApi.git`
-cd rentalApi

- Install required gems :<br>
`bundle install`

- Setup the database :<br>
`rails db:create`<br>
`rails db:migrate`


### Usage

- Install required gems :<br>
`bundle install`

- Setup the database :<br>
`rails db:create`<br>
`rails db:migrate`

### Run tests

- To run tests with RSpec :
`bundle exec rspec`

👤 **Ashaka Egerega**

- GitHub: [@AshakaE](https://www.github.com/AshakaE/)
- LinkedIn: [AshakaE](https://www.linkedin.com/in/AshakaE/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/AshakaE/rentalApi/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

TBA

## 📝 License

Copyright 2021 Ashaka Egerega

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

