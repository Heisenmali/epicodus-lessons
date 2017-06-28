class Movie < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  validates :title, :image, presence: true

  scope :sort_by_popularity, -> do
    movies = Movie.all
    ratings = Rating.all

    movies.sort_by do |movie|
      m_ratings = ratings.find_all { |rating| rating.movie_id == movie.id }
      r_count = 0;
      m_ratings.each do |rating|
        r_count += rating.stars
      end
      -(r_count / m_ratings.length)
    end
  end

  scope :sort_by_recent, -> do
    Movie.all.sort_by { |movie| movie.created_at}
  end

  def self.alpha
    all.sort_by{ |movie| movie.title }
  end
end
