class Review < ActiveRecord::Base

  validates :rating, :content, presence: true

end