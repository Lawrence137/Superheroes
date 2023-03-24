# Superheroes

This is an API for tracking heroes and their superpowers.

A `Hero` has many `Power`s through `HeroPower`

A `Power` has many `Hero`s through `HeroPower`

A `HeroPower` belongs to a `Hero` and belongs to a `Power`

![](ERDDiagram4.jpg)


# Pre-requisites

Operating System (Windows 10+, Linux 3.8+, or MacOS X 10.7+)

Ruby 2.7.4 or later

Rails 6.1.4 or later

# Setup

You can setup this repository by following this manual;

Clone the repository

git clone https://github.com/Lawrence137/Superheroes

Ensure the ruby gems are setup in your machine

`bundle install`

Perform any pending database migrations

`rails db:migrate db:seed`

Run the application

`rails s`

Open the application on Postman using this URL to test the various endpoints

http://127.0.0.1:3000

# Endpoints

GET /heroes

- Return a list of all heroes.

GET /heroes

- Return a hero along with associated powers.

GET /powers

- Return a list of all powers.

GET /powers/:id

- Render power selected by id.

PATCH /powers/:id

- Update a power's description.

 POST /hero_powers

 - Create a new HeroPower that is associated with an
existing Power and Hero. Return the hero along with their associated powers.


# Authors

This project was contributed to by;

Lawrence Kimani

Email: lawrencekimani18@gmail.com

# License

This project is licensed under GNU

General Public License v2.0