class Admin::StoresController < ApplicationController
  def index
    @store=Store.all
  end

  def edit
    @store=Store.find(params[:id])
  end
  
 
end
