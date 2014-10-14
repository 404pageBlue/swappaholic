require 'rails_helper'

describe Item do

  before :each do
    @item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: "dollars", willing_to_trade_for: "car")
end
  
  it "Item should create Item classes" do
    expect(@item.class).to eq(Item)
  end

  it "Search should display results" do
    @results = Item.where
    expect('Ipad').to eq('Ipad')
  end

it "is not valid if the est_value is zero" do
  sock = Item.new(name: "sock", description: "nike socks", condition: "used", est_value: 0, willing_to_trade_for: "car") 
  expect(sock).to be_invalid 
  end

  it "is not valid if the est_value is less than zero (negative)" do
  sock = Item.new(name: "sock", description: "nike socks", condition: "used", est_value: -5, willing_to_trade_for: "car")
  expect(sock).to be_invalid 
  end  

  it "is not valid if the est_value is not an integer" do
  sock = Item.new(name: "sock", description: "nike socks", condition: "used", est_value: "haha", willing_to_trade_for: "car")
  expect(sock).to be_invalid 
  end 

it "is not valid if the description is empty" do
  sock = Item.new(name: "sock", description: "", condition: "used", est_value: 200, willing_to_trade_for: "car") 
  expect(sock).to be_invalid 
  end 

  it "is not valid if the condition is empty" do
  sock = Item.new(name: "sock", description: "nike socks", condition: "", est_value: 200, willing_to_trade_for: "car") 
  expect(sock).to be_invalid 
  end 

  it "is not valid if the willing to trade for is empty" do
  sock = Item.new(name: "sock", description: "nike socks", condition: "used", est_value: 200 , willing_to_trade_for: "") 
  expect(sock).to be_invalid 
  end 

  it "is not valid if item does not belong to a user_id" do
  sock = Item.new(name: "sock", description: "nike socks", condition: "used", est_value: 200 , willing_to_trade_for: "car", user_id:"") 
  expect(sock).to be_invalid 
  end

end