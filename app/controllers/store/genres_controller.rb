class Store::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
  end
  
  def create
    @genre = Genre.new(genres_params)
    @genre.store.id=current_stoer
    @genre.save
  end

  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    @genre.store.id=current_stoer
    @genre.update(genres_params)
  end
  
  private
  
  def genres_params
    params.require(:genre).permit(:name, :store_id)
  end
end
