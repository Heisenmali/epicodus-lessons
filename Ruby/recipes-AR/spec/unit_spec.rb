require("spec_helper")

describe("Food") do

  describe(".create") do
    it("will check that the relationship has been created between recipes and ingredients.") do
      new_recipe = Recipe.find_or_create_by({:name => 'test_cookie', :rating => 0, :instructions => " "})
      new_ingredient = Ingredient.find_or_create_by(name: 'test_ingredient')
      new_food = Food.find_or_create_by(ingredient_id: new_ingredient.id, recipe_id: new_recipe.id)
      expect(new_recipe.ingredients).to(eq([new_ingredient]))
    end
  end

  describe(".create") do
    it("will check that the relationship has been created between recipes and tags.") do
      new_recipe = Recipe.find_or_create_by({:name => 'test_cookie', :rating => 0, :instructions => " "})
      new_tag = Tag.find_or_create_by(name: 'test_tag')
      new_media = Medium.find_or_create_by(tag_id: new_tag.id, recipe_id: new_recipe.id)
      expect(new_recipe.tags).to(eq([new_tag]))
    end
  end

  describe(".destroy") do
    it("will check that the relationship has been deleted between recipes and tags.") do
      new_recipe = Recipe.find_or_create_by({:name => 'test_cookie', :rating => 0, :instructions => " "})
      new_tag = Tag.find_or_create_by(name: 'test_tag')
      new_media = Medium.find_or_create_by(tag_id: new_tag.id, recipe_id: new_recipe.id)
      new_tag.destroy
      expect(new_recipe.tags).to(eq([]))
      expect(new_recipe.media).to(eq([]))
      expect(Medium.all).to(eq([]))

    end
  end

end
