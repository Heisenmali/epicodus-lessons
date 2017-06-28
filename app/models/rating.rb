class Rating < ActiveRecord::Base
  belongs_to :movies
  belongs_to :users

  validates :title, :stars, :review, :movie_id, :user_id, presence: true
end
