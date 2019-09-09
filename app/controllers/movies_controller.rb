class MoviesController < ApplicationController
  before_action :set_movie, only:[:show,:edit,:update,:destroy]
  def index
    @regular_movies = Movie.where(favorite:false)
    @favorite_movies = Movie.where(favorite:true)
  end
  def new;end

  def create
    @movie= Movie.create(movie_params)
    redirect_to movies_path
  end
  def show;end
  def edit;end
  def update
    @movie.update(movie_params)
    redirect_to movies_path
  end
  def destroy
    @movie.destroy()
    redirect_to movies_path
  end


  private
  def set_movie
    @movie=Movie.find(params[:id])
  end
  def movie_params
    params.require(:movie).permit(:name,:year)
  end
end
