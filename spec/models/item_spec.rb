require 'rails_helper'

describe Item do
  it "is valid with a name description condition est_value willing_to trade for" do
	item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: 10, willing_to_trade_for: "car")
     expect(item).to be_valid
   end

  it "is not valid if the item est_value is not a number" do
  	item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: "dollars", willing_to_trade_for: "car")
  	expect(item).to be_invalid
  end

  it "is not valid if the est_value is zero" do
  	item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: 0, willing_to_trade_for: "car")
  	expect(item).to be_invalid 
  end

  it "is not valid if the est_value is less than zero (negative)" do
  	item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: -10, willing_to_trade_for: "car")
  	expect(item).to be_invalid 
  end  



end
