class ItemsController < ApplicationController
  respond_to :html, :xml, :json

  def index
  	 @items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
    # respond_with(@item)
  end

  def new
    @item = Item.new
  end

  def create
  	item_params = params.require(:item).permit(:name, :description, :condition, :est_value, :willing_to_trade_for, :category)
  	item_params[:user_id] = current_user.id
  	@item = Item.create(item_params)
  	redirect_to user_profile_path(current_user)
  end

  def edit
  	@item = Item.find(params[:id])
  end

  def update
  	@item = Item.find(params[:id])
  	if @item.update_attributes(params.require(:item).permit(:name, :description, :condition, :est_value, :willing_to_trade_for, :category))
  	redirect_to item_path(@item)
  	else
  		render 'edit'
  	end
  end
end




