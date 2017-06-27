class Link < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true

  scope :order_by_score, -> { order(score: :desc)}

  def vote_up(link)
    link.votes += 1
  end

  def update_score(link, new_votes)
    time = Time.now.to_i
    time_at_creation = link.created_at.to_i
    deltaT = time - time_at_creation

    score = new_votes * 1000 - deltaT
  end
end
