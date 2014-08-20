
# getter methods allow you to grab values of instance variables set in initialize method
# setter method sets/changes value of something

class Cookbook
    attr_accessor :title
    attr_accessor :recipes
    attr_accessor :newrecipe

    def initialize(title)
        @title = title
        @recipes = []
    end 

    def add_recipe(newrecipe)
        @recipes.push(newrecipe)
        puts "Added a recipe to the collection: #{newrecipe.title}"
    end 
    def print_cookbook
        @recipes.each do |x|
        x.print_recipe
        end
    end 
end

class Recipe
    attr_accessor :title
    attr_accessor :ingredients
    attr_accessor :steps

    def initialize(title, ingredients, steps)
        @title = title
        @ingredients = ingredients
        @steps = steps
    end
    def print_recipe
        puts "Recipe Name: #{title}"
        puts "Ingredients for #{title}:"
        @ingredients.each_index do |index|
            puts "#{index+1}. #{@ingredients[index]}"
        end

        puts "These are the steps for #{title}:" 
        index = 1
        @steps.each do |step|
            puts "#{index}. #{step}"
            index += 1
        end
        
        # puts "Steps for #{title}:" 
        # @steps.each_index do |index|
        #     puts "#{index+1}. #{@steps[index]}"
        # end
    end
end     