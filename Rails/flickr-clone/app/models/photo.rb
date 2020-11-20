class Photo < ApplicationRecord
  belongs_to :user
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_many :tags

  scope :user_images , ->(current_user) { where(user_id: current_user.id)}
end
