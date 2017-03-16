# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "lime")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "soda")
Ingredient.create(name: "vodka")
Ingredient.create(name: "gin")
Ingredient.create(name: "tonic")

Cocktail.create(name: "Vodka Soda", description: "a gay's best friend")
Cocktail.create(name: "Gin and Tonic", description: "Britain's best contribution to the world")
Cocktail.create(name: "Manhattan", description: "what you order when you don't know what to order but want to look like you know what to order")
Cocktail.create(name: "Cranberry Vodka", description: "a girl's best friend")
Cocktail.create(name: "Beer", description: "a man's best friend")
Cocktail.create(name: "Spritz", description: "mom's best friend")
Cocktail.create(name: "Margarita", description: "nobody says no to a margarita")
