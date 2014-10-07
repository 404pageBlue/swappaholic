class Item < ActiveRecord::Base
   belongs_to :user

 #  def as_json(options={})
	# 	super(:only => [:name])
	# end

end
