class Component < ApplicationRecord
  belongs_to :post

  validates :component_type, presence: true
  validates :content, presence: true
end
