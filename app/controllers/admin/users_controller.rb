class Admin::UsersController < ApplicationController
  def index
    @users=User.all
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(users_params)
    redirect_to
  end

  private

  def users_params
    params.require(:user).permit(:user_name, :email)
  end

end
