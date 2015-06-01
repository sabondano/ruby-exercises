class Adult

	def initialize
		@sober = true
		@drinks = 0
	end

	def sober?
		@sober if @drinks < 3
	end

	def consume_an_alcoholic_beverage
		@drinks += 1
	end

end