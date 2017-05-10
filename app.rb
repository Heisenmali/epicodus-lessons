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
