class Santa

	def initialize
		@fits = true
		@cookies_eaten = 0
	end

	def fits?
		@fits if @cookies_eaten < 3
	end

	def eats_cookies
		@cookies_eaten += 1
	end
end