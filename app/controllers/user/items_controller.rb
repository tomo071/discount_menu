class User::ItemsController < ApplicationController
  def index
    @items=Item.find(params[:store_id])
    @genres=Genre.all
    unless params[:genre_id]==nil
      @genre=Genre.find(params[:genre_id])
      @items=@genre.items
    end
  end

  def show
    @item=Item.find(params[:id])
    @material=Material.new
    redirect_to user_materials_path
  end
end
