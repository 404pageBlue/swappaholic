class TradesController < ApplicationController

	def index
		@trades = Trade.all
	end

	def new
		@trade = Trade.all
	end

	# def create
	# 	trade_params = params.require(:trade).permit(:trader_id, :tradee_id, :trader_item_id, :tradee_item_id, :success)
	# end

  # def index
  # 	 @items = Item.all
  # end

  # def show
  # 	@item = Item.find(params[:id])
  #   # respond_with(@item)
  # end

  # def new
  #   @item = Item.new
  # end

  # def create
  # 	item_params = params.require(:item).permit(:name, :description, :condition, :est_value, :willing_to_trade_for, :category)
  # 	item_params[:user_id] = current_user.id
  # 	@item = Item.create(item_params)
  # 	redirect_to user_profile_path(current_user)
  # end

  # def edit
  # 	@item = Item.find(params[:id])
  # end

  # def update
  # 	@item = Item.find(params[:id])
  # 	if @item.update_attributes(params.require(:item).permit(:name, :description, :condition, :est_value, :willing_to_trade_for, :category))
  # 	redirect_to item_path(@item)
  # 	else
  # 		render 'edit'
  # 	end
  # end
end