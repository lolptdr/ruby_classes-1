class Cookbook
	attr_accessor :title
	def initialize(title)
		@title = title
	end

end

class Recipe
	attr_accessor :title,:steps,:ingredients
	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
	# def title
	# 	@title
	# end
	# def ingredients
	# 	@ingredients
	# end
	# def steps
	# 	@steps
	# end
	# def title=(new_title)
	# 	@title = new_title
	# end
	# def ingredients=(new_ingreds)
	# 	@ingredients = new_ingreds
	# end
	# def steps=(new_steps)
	# 	@steps = new_steps
	# end
end



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

# mex_cuisine.recipes # []
# mex_cuisine.add_recipe(burrito)
# p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]