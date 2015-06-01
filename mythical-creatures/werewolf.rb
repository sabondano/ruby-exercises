class Werewolf

	attr_reader :name, :location

	def initialize(name, location="London")
		@name = name
		@location = location
		@human = true
		@werewolf = false
		@changed = false
	end

	def human?
		@human
	end

	def respond_to?(action)
		true
	end

	def change!
		@human == true ? @human = false : @human = true
		@werewolf == false ? @werewolf = true : @werewolf = false
	end

	def werewolf?
		@werewolf
	end
end