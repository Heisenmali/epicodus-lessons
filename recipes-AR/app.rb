require("bundler/setup")
Bundler.require(:default)
require('pry')


Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  @recipes = Recipe.all
  erb(:index)
end

post("/recipe/") do
  recipe_name = params['recipe_name']
  Recipe.create({:name => recipe_name, :rating => 0, :instructions => " "})
  redirect('/')
end

get("/recipe/:id") do
  @recipe = Recipe.find(params['id'].to_i)
  erb(:recipe)
end

post('/recipe/:id/ingredient') do
  ingredient_name = params['ingredient_name']
  recipe = Recipe.find(params['id'])
  new_ingredient = Ingredient.find_or_create_by(name: ingredient_name)
  new_food = Food.find_or_create_by(ingredient_id: new_ingredient.id, recipe_id: recipe.id)
  redirect back
end

post('/recipe/:id/instructions') do
  instructions = params['instructions']
  recipe = Recipe.find(params['id'])
  recipe.update(instructions: instructions)
  redirect back
end

patch('/recipe/:id') do
  recipe = Recipe.find(params['id'])
  recipe_name = params['recipe_name']
  recipe.update(name: recipe_name)
  redirect back
end

delete('/recipe/:id') do
  recipe = Recipe.find(params['id'])
  recipe.destroy
  redirect('/')
end

post('/recipe/:id/tag') do
  recipe = Recipe.find(params['id'])
  new_tag = Tag.find_or_create_by(name: params['tag_name'])
  new_media = Medium.find_or_create_by(recipe_id: recipe.id, tag_id: new_tag.id)
  redirect back
end

get("/tag/:id") do
  @tag = Tag.find(params['id'])
  erb(:tag)
end

get("/ingredient/:id") do
  @ingredient = Ingredient.find(params['id'])
  erb(:ingredient)
end

get("/ingredients") do
  @ingredients = Ingredient.all
  erb(:ingredients)
end

get("/tags") do
  @tags = Tag.all
  erb(:tags)
end

delete('/food/:id') do
  this_food = Food.find(params['id'])
  this_food.destroy
  redirect back
end

delete('/ingredient/:id') do
  this_ingredient = Ingredient.find(params['id'])
  this_ingredient.destroy
  redirect('/ingredients')
end

patch('/ingredient/:id') do
  this_ingredient = Ingredient.find(params['id'])
  new_name = params['ingredient_name']
  this_ingredient.update({:name => new_name})
  redirect back
end

delete('/tag/:id') do
  this_tag = Tag.find(params['id'])
  this_tag.destroy
  redirect('/tags')
end

patch('/tag/:id') do
  this_tag = Tag.find(params['id'])
  new_name = params['tag_name']
  this_tag.update({:name => new_name})
  redirect back
end
