class Movie < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  validates :title, :image, presence: true

  def self.alpha
    all.sort_by{ |movie| movie.title }
  end
end
