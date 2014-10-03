class ItemsController < ApplicationController
  def index
  	 @items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def new
<<<<<<< HEAD
    @item = Item.new
  end

end
=======
  	@item = Item.new
  end

  def create
  	item_params = params.require(:item).permit(:name, :description, :condition, :est_value, :willing_to_trade_form)
  	item_params[:user_id] = current_user.id
  	@item = Item.create(item_params)
  	redirect_to user_profile_path(current_user)
  end

end





>>>>>>> a51034bfee19c8de7926f0c0d85e84e689f3dcf7
