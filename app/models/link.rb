class Link < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true

  def vote_up(link)
    link.votes += 1
  end
end
