class Admin::ReshipesController < ApplicationController
  
  def index
    @reshipe=Reshipe.all
  end
  
  def destroy
    @reshipe=Reshipe.find(params[:id])
    @reshipe.delete
  end
  
end
