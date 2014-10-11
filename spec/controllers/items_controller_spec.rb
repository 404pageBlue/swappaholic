require 'rails_helper'

describe Item do
  it "Item should create Item classes" do
    item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: "dollars", willing_to_trade_for: "car")
    expect(item.class).to eq(Item)
  end

  it "Item should show name " do
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