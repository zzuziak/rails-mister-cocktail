require 'open-uri'
require "json"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredients = JSON.parse(open(url).read)["drinks"]

Ingredient.destroy_all
puts "Cleaning up..."

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

puts "Seeding"
puts "Created #{Ingredient.count} ingredients!"
