class WelcomeController < ApplicationController
  def index
  	@users = User.all
  	@items = Item.all
  end
end
