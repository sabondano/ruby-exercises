class Clearance

	def initialize
		@clearance = []
	end

	def best_deal
		@clearance.length > 0 ? @clearance.max_by { |item| item.discount.to_f / item.price.to_f }.name : nil
	end

	def <<(item)
		@clearance << item
	end
end