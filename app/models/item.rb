class Item < ActiveRecord::Base
   belongs_to :user


   def fly
     'flying'
   end

   def item
   	'flying'
   end
