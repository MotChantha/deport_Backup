class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy #dependent: :destroy==>delete all relationship when cart_id has been deleted
end
