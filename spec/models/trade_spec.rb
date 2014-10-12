require 'rails_helper'

describe Trade do
  it '#new' do
    @item = Item.new
    expect(@item).to eq(@item)
  end

  it '#new' do
    @item = Item.new
    expect(@item).to be_instance_of(Item)
  end
end