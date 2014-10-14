class Item < ActiveRecord::Base
   belongs_to :user
   has_many :trader_items, class_name: "Trade", foreign_key: :trader_item_id, inverse_of: :tradee_item
   has_many :tradee_items, class_name: "Trade", foreign_key: :tradee_item_id, inverse_of: :trader_item
   
   validates_numericality_of :est_value, :on => :create, :greater_than => 0

   validates :est_value, :numericality => {:only_integer => true}

   validates_presence_of :description
   validates_presence_of :condition
   validates_presence_of :willing_to_trade_for
   validates_presence_of :user_id

end
