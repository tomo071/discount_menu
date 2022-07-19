class Admin::StoresController < ApplicationController
  def index
    @store=Store.all
  end

  def edit
    @store=Store.find(params[:id])
  end

  def update
    @store=Store.find(params[:id])
    @store.update(store_params)
    redirect_to
  end

  private

  def store_params
    params.require(:store).permit(:approval)
  end

end
