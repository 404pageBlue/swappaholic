require 'rails_helper'

describe '#fly' do
  
  it 'should have its name returned as a string' do
	subject { Item.new }
     expect(item.fly).to eq 'flying'
   end
end