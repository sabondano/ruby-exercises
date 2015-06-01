class Item

	attr_reader :discount, :name, :price

	def initialize(name, price_and_discount)
		@name = name
		@price = price_and_discount[:price]
		@discount = price_and_discount[:discount]
	end

end