class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :items

	has_many :traders, class_name: "Trade", foreign_key: :trader_id, inverse_of: :tradee
  has_many :tradees, class_name: "Trade", foreign_key: :tradee_id, inverse_of: :trader
end
