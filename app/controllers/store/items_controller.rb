class Store::ItemsController < ApplicationController
  def new
    @item =Item.new
  end

  def create
    @item = Item.new(items_params)
    @item.genre.store.id = current_stoer.id
    @item.save
    redirect_to store_items_path
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.genre.store.id = current_stoer.id
    @item.update(items_params)
  end

  private

  def items_params
    params.require(:item).permit(:item_name, :price, :genre_id)
  end

end
