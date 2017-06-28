class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @alpha_movies = Movie.alpha
    @popular = Movie.sort_by_popularity
    @recent = Movie.all.sort_by_recent
    @most_reviewed = Movie.all.sort_by_most_reviews
    @unreviewed = Movie.unreviewed

    if params[:query] && params[:query].gsub!(/[^a-z0-9]/i, "") != ""
      @search_out = Movie.search_by_title(params[:query])
    else
      @search_out = @movies
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
