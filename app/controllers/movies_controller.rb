class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @alpha_movies = Movie.alpha
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
