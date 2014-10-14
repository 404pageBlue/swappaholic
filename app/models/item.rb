class Item < ActiveRecord::Base
   belongs_to :user
   has_many :trader_items, class_name: "Trade", foreign_key: :trader_item_id, inverse_of: :tradee_item
   has_many :tradee_items, class_name: "Trade", foreign_key: :tradee_item_id, inverse_of: :trader_item


  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

   
   validates_numericality_of :est_value, :on => :create, :greater_than => 0

   validates :est_value, :numericality => {:only_integer => true}

   validates_presence_of :description
   validates_presence_of :condition
   validates_presence_of :willing_to_trade_for
   validates_presence_of :user_id
# 8472c7bcafd81ab064cbb02b1e76ae705717b42a

end
