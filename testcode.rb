
require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["heat beans", "place beans in tortilla", "roll up"]
p burrito.steps # ["tortilla", "bean"]

mex_cuisine.title = "Mexican Recipes" # Change title of mex_cuisine Class
puts mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito" # Change title of burrito Class
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]
p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

taco = Recipe.new("Taco", ["taco", "cheese", "meat"], ["place meat in taco", "sprinkle cheese", "wrap taco"])

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(taco)

p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]

# burrito.print_recipe
# taco.print_recipe

mex_cuisine.print_cookbook