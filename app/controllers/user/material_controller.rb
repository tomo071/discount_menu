class User::MaterialController < ApplicationController
  def index
    @materials=current_user.material
    @item=Item.all
  end
  
  def create
    @material=Material.new(material_params)
    @material.user_id=current_user.id
    @material.save
    
  end
  
  def all_destroy
    @materials=current_user.material
    @materials.delete_all
    
  end
  
  def destroy
    @material=Material.find(params[:id])
    @material.delete
  end
  
  private
  
  def material_params
    params.require(:material).permit(:item_id)
  end
end
