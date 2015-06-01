class Centaur

	attr_reader :name, :breed

	def initialize(name, breed)
		@name = name
		@breed = breed
		@actions = 0
		@cranky = false
		@standing = true
	end

	def shoot
		if cranky? || laying?
			"NO!"
		else
			@actions += 1
			"Twang!!!"
		end
	end

	def run
		if cranky? || laying?
			"NO!"
		else
			@actions += 1
			"Clop clop clop clop!!!"
		end
	end

	def cranky?
		if @actions > 2
			@cranky = true
		else
			@cranky = false
		end
	end

	def standing?
		@standing
	end

	def sleep
		if standing?
			"NO!"
		else
			@cranky = false
			@actions = 0
		end
	end

	def respond_to?(command)
		true
	end

	def lay_down
		@standing = false
	end

	def laying?
		!@standing
	end

	def stand_up
		@standing = true
	end
end