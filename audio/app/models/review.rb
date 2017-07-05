class Review < ActiveRecord::Base

  belongs_to :product
  belongs_to :user

  validates :rating, presence: true, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
  validates :content, presence: true, length: { in: 50..250 }

end