# Pizza Restaurant API

This is a Rails API for tracking pizza restaurants. It has the following resources:

- Restaurants
- Pizzas
- Restaurant Pizzas(a join table for restaurants and pizzas)

## Requirements

To use this API, you must have:

- ruby -v 2.7.4

- rails -v 7.0.4.3

-Postgress installed on your machine.

### Installation

To install and use this API, follow these steps:

1. Clone the repository

   git clone https://https://github.com/ShuaibShaban/phase-4-codechallenge

2. install the dependencies

   cd pizza-shop

   bundle install

3. set up the database:

   rails db:migrate

   rails db:seed

4. Start the server

   rails server

Once the server is up and runnning, you should be able to access the API at `https://localhost:3000`.

### Models

- This API has the following models:

#### Restaurant

- A `Restaurant` has many `pizza`s through `RestaurantPizza`

Attributes:

- `name`:string

- `ingredients`:string

#### RestaurantPizza

A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `pizza`.

Attributes:

- `price`:integer

#### Validations

The `RestaurantPizza` model has a validation for the `price` attribute, which must be between 1 and 30.

#### Routes

- This API has the following routes:

# GET/restaurants

- Returns a list of all restaurants

example response:

[ { "id": 1, "name": "Sottocasa NYC", "address": "298 Atlantic Ave, Brooklyn, NY 11201" }, { "id": 2, "name": "PizzArte", "address": "69 W 55th St, New York, NY 10019" }]

## GET/restaurants/:id

- Returns the details of a restaurant, including the pizzas it serves.

- Example response

{
"id": 1,
"name": "Sottocasa NYC",
"address": "298 Atlantic Ave, Brooklyn, NY 11201",
"pizzas": [
{
"id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese"
},
{
"id": 2,
"name": "Pepperoni",
"ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
}
]
}

#### DELETE/restaurants/:id

-Deletes a restaurant and all of its associated restaurant pizzas.

- Returns an empty response body.

#### GET/pizzas

-Returns a list of all pizzas.

- Example response:

[ { "id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese" },
{ "id": 2, "name": "Pepperoni",
"ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni" }]

#### POST/restaurant_pizzas

- Creates a new restaurant pizza associated with an existing restaurant and pizza.

- Example request body:

{
"price": 5
