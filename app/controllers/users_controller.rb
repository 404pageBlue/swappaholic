class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
    @items = Item.all
    @trades = Trade.all
  end  

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params.require(:user).permit(:firstname, :lastname, :email))
      redirect_to user_profile_path(@user)
    else
      render 'edit'
    end
  end

end