class TradesController < ApplicationController
  def index
  	@trades = Trade.where('trader_id = ? OR tradee_id = ?', current_user, current_user)
  	#show all the pending trades here? at this point the success value still false.
  end

  def new
    @item = Item.find(params[:id])
  end

  def create
  	@trade = Trade.new(params.require(:trade).permit(:trader_id, :tradee_id, :trader_item_id, :tradee_item_id))
		@trade.save
			#alert("your trade has been proposed")
		#else
			# doing nothing. display "pending trade"
			
		#end
	end

  def exchange

    trader_item =  Trade.find(params[:trade][:trade_id]).trader_item
    tradee_item =  Trade.find(params[:trade][:trade_id]).tradee_item

    trader_id = trader_item.user_id
    tradee_id = tradee_item.user_id

    trader_item.user_id = tradee_id
    tradee_item.user_id = trader_id

    trader_item.save
    tradee_item.save

  end

end

