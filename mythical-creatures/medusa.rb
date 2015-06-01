class Medusa

	attr_reader :name, :statues

	def initialize(name)
		@name = name
		@statues = []
	end

	def respond_to?(x)
		true
	end

	def stare(victim)
		@statues << victim
		victim.stoned = true
	end

end

class Person
	attr_writer :stoned
	attr_reader :name

	def initialize(name)
		@name = name
		@stoned = false
	end

	def stoned?
		@stoned
	end
end