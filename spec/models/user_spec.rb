require 'rails_helper'

describe User do 

it "the first name field should only contain letters" do
  user_1 = User.new(firstname: "999", lastname: "yang", password: "12345678", password_confirmation: "12345678") 
  expect(user_1).to be_invalid 
  end

it "the last name field should only contain letters" do
  user_1 = User.new(firstname: "kevin", lastname: "999", password: "12345678", password_confirmation: "12345678") 
  expect(user_1).to be_invalid 
  end

it "is not valid if it doens't have a first name" do
  user_1 = User.new(firstname: "", lastname: "yang", password: "12345678", password_confirmation: "12345678")  
  expect(user_1).to be_invalid 
  end

it "is not valid if it doens't have a last name" do
  user_1 = User.new(firstname: "999", lastname: "", password: "12345678", password_confirmation: "12345678")  
  expect(user_1).to be_invalid 
  end

it "is not valid if the email field is blank" do
  user_1 = User.new(firstname: "999", lastname: "yang", password: "12345678", password_confirmation: "12345678", email: "")  
  expect(user_1).to be_invalid 
  end

end