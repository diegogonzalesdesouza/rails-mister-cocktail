# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Generating seeds:"

Ingredient.create(name: "lemon")
Ingredient.create(name: "hortela")
Ingredient.create(name: "ice")
Ingredient.create(name: "tomato")

Cocktail.create(name: "Morrito")
Cocktail.create(name: "Caipirinha")

Dose.create(description: "1 cp", cocktail_id: 2, ingredient_id: 1)
Dose.create(description: "a bit", cocktail_id: 2, ingredient_id: 3)
Dose.create(description: "3 leaves", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "15 drops", cocktail_id: 1, ingredient_id: 2)

puts "Done!"
