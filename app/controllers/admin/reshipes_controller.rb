class Admin::ReshipesController < ApplicationController
  def index
    @reshipe=Reshipe.all
  end
  
  
end
