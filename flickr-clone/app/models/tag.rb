class Tag < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  scope :users_tagged, ->(photo_id) { where(photo_id: photo_id) }
end
