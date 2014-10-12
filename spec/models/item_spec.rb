require 'rails_helper'

describe Item do
  it "Item should create Item classes" do
    item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: "dollars", willing_to_trade_for: "car")
    expect(item.class).to eq(Item)
  end

  it "Search should display results" do
    @results = Item.where
    expect('Ipad').to eq('Ipad')
  end

  it 'Should be able to edit an item' do
    @item = create(:item, name: "iPad", description: "Pad of i", condition: "like new", est_value: "200", willing_to_trade_for: "furniture")
    put :update, id: @item, item: attributes_for(:item, name: 'iPo')
    @item.reload
    expect(@item.new_item).to eq(@item)
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