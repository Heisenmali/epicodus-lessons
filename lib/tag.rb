class Tag < ActiveRecord::Base
  has_many :media
  has_many :recipes, through: :media
end
