class Rating < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  validates :title, :stars, :review, presence: true
end
