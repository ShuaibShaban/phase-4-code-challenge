class Pizza < ApplicationRecord
    has_many :restaurants_pizzas
    has_many :restaurants, through: :restaurant_pizzas
end
