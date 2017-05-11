class Ingredient < ActiveRecord::Base
  has_many :foods, dependent: :destroy
  has_many :recipes, through: :foods
end
