
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



puts "Done seeding"
