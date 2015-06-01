class Catalogue

	def initialize
		@catalogue = []
	end

	def cheapest
		@catalogue.length == 0 ? nil : @catalogue.min_by { |product| product.price }.name
	end

	def <<(product)
		@catalogue << product
	end
end