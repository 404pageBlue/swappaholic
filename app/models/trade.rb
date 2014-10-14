class Trade < ActiveRecord::Base
	belongs_to :trader, class_name: "User", foreign_key: :trader_id
	# inverse_of: :tradees
	belongs_to :tradee, class_name: "User", foreign_key: :tradee_id
	# inverse_of: :traders	
	belongs_to :trader_item, class_name: "Item", foreign_key: :trader_item_id #inverse_of: :tradee_item
	belongs_to :tradee_item, class_name: "Item", foreign_key: :tradee_item_id #inverse_of: :trader_item

end
