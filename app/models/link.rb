class Link < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true

  scope :order_by_votes, -> { order(votes: :desc)}

  def vote_up(link)
    link.votes += 1
  end
end
