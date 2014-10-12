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
end