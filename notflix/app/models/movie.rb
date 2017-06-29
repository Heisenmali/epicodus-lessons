class Movie < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  validates :title, :image, presence: true

  scope :sort_by_popularity, -> do
    ratings = Rating.all
    movies = Movie.all.find_all { |movie| ratings.any? { |rating| rating.movie_id == movie.id } }

    movies.sort_by do |movie|
      m_ratings = ratings.find_all { |rating| rating.movie_id == movie.id}
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

  scope :sort_by_most_reviews, -> do
    movies = Movie.all
    ratings = Rating.all

    movies.sort_by do |movie|
      -(ratings.count { |rating| rating.movie_id == movie.id })
    end
  end

  scope :unreviewed, -> do
    ratings = Rating.all
    movies = Movie.all.find_all { |movie| ratings.none? { |rating| rating.movie_id == movie.id } }
  end

  scope :search_by_title, -> (query) do
    movies = Movie.all
    movies.find_all do |movie|
      movie.title.downcase.match("#{query.downcase}")
    end
  end

  def self.alpha
    all.sort_by{ |movie| movie.title }
  end
end
