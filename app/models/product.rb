class Product < ActiveRecord::Base
	has_many :line_items
	before_destroy :ensure_not_references_any_line_item #is a hook method 
	private
	def ensure_not_references_any_line_item
		if line_items.empty?
			return true
		else
			error.add(:base , "line item is present")
			return false
		end
	end
end
