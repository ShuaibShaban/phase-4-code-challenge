# Clear existing data
Restaurant.destroy_all
Pizza.destroy_all
# RestaurantPizzas.destroy_all

puts "Seeding in progress"

# Create restaurants
5.times do 
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end

# Create pizzas with ingredients
5.times do 
  ingredients = []
  3.times do
    ingredients << Faker::Food.ingredient
  end
  Pizza.create(
    name: Faker::Food.dish,
    ingredients: ingredients.join(", ")
  )
end

# Create restaurant pizzas
# RestaurantPizzas.create(restaurant_id: 1, pizza_id: 2)
# RestaurantPizzas.create(restaurant_id: 1, pizza_id: 4)
# RestaurantPizzas.create(restaurant_id: 2, pizza_id: 1)
# RestaurantPizzas.create(restaurant_id: 2, pizza_id: 4)
# RestaurantPizzas.create(restaurant_id: 3, pizza_id: 1)

puts "Done seeding"
