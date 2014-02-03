module CurrentCart
	extend ActiveSupport::Concern
	private
	def set_cart
		@cart=cart.find(session[:cart_id])#find session of cart through cart_id
	end
end