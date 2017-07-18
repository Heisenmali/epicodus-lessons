class Song < ApplicationRecord
  has_many :reviews
  
  def self.search(artist)
    Song.where(artist: artist)
  end
end
