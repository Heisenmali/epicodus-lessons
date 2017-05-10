class Recipes < ActiveRecord::Base
  has_many :foods
  has_many :ingredients, through: :foods
  has_many :medias
  has_many :tags, through: :medias
end
