class Post < ApplicationRecord
  has_many :components

  validates :author, presence: true
  validates :title, presence: true
  validates :teaser, presence: true
  validates :media, presence: true
  validates :date, presence: true
end
