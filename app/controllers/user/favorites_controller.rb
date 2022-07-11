class User::FavoritesController < ApplicationController
  
  def create
    reshipe=Reshipe.find(params[:resipe_id])
    favorite=current_user.favorite.new(resipe_id: reshipe.id)
    favorite.save
  end
  
  def destroy
    reshipe=Reshipe.find(params[:resipe_id])
    favorite=current_user.favorites.find_by(resipe_id: reshipe.id)
    favorite.destroy
  end
end
