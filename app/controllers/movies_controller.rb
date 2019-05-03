# Controller for displaying movies in the index page.
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @stars = @movie.stars
    @comments = @movie.user_comments
  end
end
