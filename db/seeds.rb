# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def populate_instructions
  string = ''
  (1..(rand(1..8))).each do |i|
    string += "#{i}. #{Faker::String.random(length: 20..42)}"
    string += "\n\n"
  end
  string
end

20.times do
  recipe = Recipe.new(
    name: Faker::Food.dish,
    cuisine: Faker::Nation.nationality,
    yield: rand(1..12),
    ingredients: "#{rand(1..8)} #{Faker::Food.ingredient}, #{Faker::Food.measurement} #{Faker::Food.spice}, and #{rand(1..5)} #{Faker::Food.vegetables}",
    equipment: Faker::Appliance.equipment,
    instructions: populate_instructions
  )
  recipe.save
end
