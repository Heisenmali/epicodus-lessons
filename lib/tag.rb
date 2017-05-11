class Tag < ActiveRecord::Base
  has_many :media, dependent: :destroy
  has_many :recipes, through: :media
end
