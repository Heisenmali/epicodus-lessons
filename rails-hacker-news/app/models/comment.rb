class Comment < ActiveRecord::Base
  belongs_to :link

  validates :content, :presence => true
  validates :link_id, :presence => true
end
