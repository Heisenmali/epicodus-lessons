class User < ActiveRecord::Base
  has_many :ratings
  has_many :movies, through: :ratings

  validates :name, presence: true
end
