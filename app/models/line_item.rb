class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  	def amount
		product.price * quantity
	
	end
end

