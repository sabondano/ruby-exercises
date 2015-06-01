class Money

	attr_reader :amount

	def initialize
		@amount = 0
	end

	def earn(dollars)
		@amount += dollars
	end

	def spend(dollars)
		@amount -= dollars
	end
end