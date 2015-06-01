class Bag

	attr_accessor :count
	attr_reader :candies

	def initialize
		@count = 0
		@candies = []
	end

	def empty?
		@candies.length > 0 ? false : true
	end

	def <<(candy)
		@candies << candy
		@count += 1
	end

	def contains?(type)
		@candies.any? { |candy| candy.type == type}
	end

end