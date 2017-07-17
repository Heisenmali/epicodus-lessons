class Song < ApplicationRecord
  def self.search(artist)
    Song.where(artist: artist)
  end
end
