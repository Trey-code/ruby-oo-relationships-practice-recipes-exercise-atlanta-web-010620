require_relative '../config/environment.rb'
require 'pry'

trey = User.new("trey")
bryan = User.new("bryan")
dino = User.new("dino")

pasta = Recipe.new("pasta")
pizza = Recipe.new("pizza")
cereal = Recipe.new("cereal")

trey.add_recipe_card("2020-01-03",3, pasta)
trey.add_recipe_card("2020-01-02",4, pizza)
bryan.add_recipe_card("2020-07-02",5, cereal)

binding.pry
