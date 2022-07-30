class User::ReshipesController < ApplicationController
  def new
    @reshipe=Reshipe.new
  end

  def create
    @materials=current_user.material
    @reshipe=Reshipe.new(reshipes_params)
    @materials.each do |material|
      @reshipe.item_id=material.id
      @reshipe.save
    end
    @reshipe.user_id=current_user.
    @reshipe.save
  end

  def index
    @reshipes=Reshipe.all
  end

  def show
    @reshipe=Reshipe.find(params[:id])
  end

  def edit
    @reshipe=Reshipe.find(params[:id])
  end

  def destroy
    @reshipe=Reshipe.find(params[:id])
    @reshipe.user=current_user
    @reshipe.delete
  end

  private

  def reshipes_params
    params.reqire(:reshipe).permit(:title, :body, :item_id, :user_id, :image)
  end
end
