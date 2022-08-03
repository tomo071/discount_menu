class User::StoresController < ApplicationController
  def index
    @stores=Store.all
  end

  def show
    @store=Store.find(params[:id])
    @items=@store.items
  end
end
