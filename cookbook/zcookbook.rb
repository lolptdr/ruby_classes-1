## All the code from cookbook.rb - brought in from using the command `require_relative 'cookbook'`.

class Cookbook
	attr_accessor :title,:recipes
	def initialize(title)
		@title = title
		@recipes = []
	end
	def add_recipe(recipe)
		@recipes.push(recipe)
		puts "Added a recipe to the collection: #{recipe.title}"
	end
	def recipe_titles
		@recipes.each do |new_title|
			puts new_title.title
		end
	end
	def recipe_ingredients
		@recipes.each do |new_ingredients| 
			puts "These are the ingredients for #{new_ingredients.title}: #{new_ingredients.ingredients}"
		end
	end
	def print_cookbook
		@recipes.each do |rcp|
			puts "Title: #{rcp.title}"
			puts "Ingredients for #{rcp.title}: #{rcp.ingredients.join(', ')}"
			puts "Steps forMaking #{rcp.title}: #{rcp.steps.join(', ')}"
		end
	end
end

class Recipe
	attr_accessor :title,:steps,:ingredients
	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
	def print_recipe
		puts "Title: #{@title}"
		puts "Ingredients for #{@title}: #{@ingredients.join(', ')}"
		puts "Steps for Making #{@title}: #{@steps.join(', ')}"
	end
end