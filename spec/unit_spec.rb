require("spec_helper")

describe(Food) do
  it { should belong_to(:ingredient) }
  it { should belong_to(:recipe) }
end

describe(Ingredient) do
  it { should have_many(:foods) }
  it { should have_many(:ingredients) }
end
