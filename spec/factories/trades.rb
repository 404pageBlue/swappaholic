# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trade do
    trader ""
    tradee ""
    trader_item ""
    tradee_item ""
    success false
  end
end
