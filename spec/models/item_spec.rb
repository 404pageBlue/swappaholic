require 'rails_helper'

describe Item do
  it "if item = to nil" do
  	item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: "dollars", willing_to_trade_for: "car")
  	expect(item.class).to eq(Item)
  end

  it "show list item" do
  item = Item.show(name: "socks", description: "nike socks", condition: "used", est_value: 10, willing_to_trade_for: "car")
     expect(item).to eq([:id])
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
