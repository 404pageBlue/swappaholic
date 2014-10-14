require 'rails_helper'

describe ItemsController do

  before :each do
    @item = Item.new(name: "socks", description: "nike socks", condition: "used", est_value: "dollars", willing_to_trade_for: "car")
  end

  it "should be successful" do
    get 'index'
    expect(response).to have_http_status(:success)
  end

  it "#new" do
    expect(@item.class).to eq(Item)
  end

  it "#new" do
  get 'new'
  expect(response).to have_http_status(:success)
  end

  it '#create' do
    expect(@item).to eq(@item)
  end

  it '#edit' do
    expect(@item).to eq(@item)
  end
  
  it "#update" do
    expect(@item).to eq(@item)
  end

    describe "GET '#show'" do
    it "should be successful" do
      get 'index'
      expect(response).to be_success
    end
  end

  it "#destroy" do
    expect(@item).to eq(@item)
  end

end