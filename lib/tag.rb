class Tag < ActiveRecord::Base
  has_many :medias
  has_many :recipes, through: :medias
end
