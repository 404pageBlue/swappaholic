class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
    @items = Item.all
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

  def new
    params.require(:user).permit(:firstname, :email, :lastname)
  end

  # def destroy
  # 	@user = User.find(params[:id])
  # 	@user.destroy
  # 	redirect_to root_path
  # end
end