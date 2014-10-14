class ItemsController < ApplicationController
  respond_to :html, :xml, :json

  def index
  	 @items = Item.all
     respond_with @items
  end

  def show
  	@item = Item.find(params[:id])
    respond_with @item
  end

  def new
    @item = Item.new
    respond_with @item
  end

  def create
  	item_params = params.require(:item).permit(:name, :description, :condition, :est_value, :willing_to_trade_for, :category)
  	item_params[:user_id] = current_user.id
  	@item = Item.create(item_params)
  	redirect_to user_profile_path(current_user)
  end

   def search
    # "I" is for ignoring uppercase and lower case difference.
    # LIKE = looking for the stuff that is closest to the keyword
    # "%# contentgoeshere %" = prevents direct injection of the words typed in the search box into our database (postgreSQL specific)
    @results = Item.where("name ILIKE ?", "%#{params[:keyword]}%")
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

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to :back
  end

end