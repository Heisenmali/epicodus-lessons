class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @alpha_movies = Movie.alpha
    @popular = Movie.sort_by_popularity
    @recent = Movie.all.sort_by_recent
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
