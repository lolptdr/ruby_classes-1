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
			puts "Steps for Making #{rcp.title}:"
			rcp.steps.each_with_index do |enum_steps,index|
				puts "#{index+1}. #{enum_steps}"
			end
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
	def rate_recipe(rating)
		@rating = rating
		puts "Ratings are based on a scale of 0 to 5 stars, with 5 stars as the best."
		puts "You have given #{@title} recipe a rating of #{@rating} stars!"
	end
	def change_rating(new_rating)
		@new_rating = new_rating
		puts "Old rating for #{@title}: #{@rating}"
		puts "New rating for #{@title}: #{@new_rating}"
	end
end