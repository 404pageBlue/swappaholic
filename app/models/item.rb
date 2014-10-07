class Item < ActiveRecord::Base
   belongs_to :user
   has_many :trader_items, class_name: "Trade", foreign_key: :trader_item_id, inverse_of: :tradee_item
   has_many :tradee_items, class_name: "Trade", foreign_key: :tradee_item_id, inverse_of: :trader_item
end
