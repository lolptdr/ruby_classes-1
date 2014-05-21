require_relative 'cookbook'

# Test Code:
mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

# Getter
puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean"]
p burrito.steps # ["heat beans", "place beans in tortilla", "roll up"]

# Need both Getter+Setter!!
mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes
burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]
p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito) # Added a recipe to the collection: Veggie Burrito
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]

mex_cuisine.recipe_titles # Veggie Burrito
mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "tomatoes"]

burrito.print_recipe
# Title: Veggie Burrito
# Ingredients for Veggie Burrito: ["tortilla", "tomatoes"]
# Steps for Making Veggie Burrito: ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

burrito2 = Recipe.new("Barbacoa Burrito",["tortilla", "barbacoa"],["braise beef", "place barbacoa in tortilla", "roll up"])
mex_cuisine.add_recipe(burrito2)
p mex_cuisine.recipes
mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients

mex_cuisine.print_cookbook
burrito.rate_recipe(3)
burrito2.rate_recipe(4.5)
burrito2.change_rating(5)