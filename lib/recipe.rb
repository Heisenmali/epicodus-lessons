class Recipe < ActiveRecord::Base
  has_many :foods, dependent: :destroy
  has_many :ingredients, through: :foods
  has_many :media, dependent: :destroy
  has_many :tags, through: :media
end
