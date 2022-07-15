class Store::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genres_params)
    @genre.store.id=current_store.id
    @genre.save
    redirect_to store_genres_path
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.store.id=current_stoer.id
    @genre.update(genres_params)
    redirect_to store_genres_path
  end

  private

  def genres_params
    params.require(:genre).permit(:name, :store_id)
  end
end
