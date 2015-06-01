require 'pry'

class Bag

	attr_reader :candies

	def initialize
		@candies = []
	end

	def empty?
		@candies.length > 0 ? false : true
	end

	def <<(candy)
		@candies << candy
	end

	def count
		@candies.length
	end

	def contains?(type_to_check)
		@candies.any? { |candy| candy.type == type_to_check }
	end

	def grab(candy_type)
		grabbed_candy = @candies.detect { |candy| candy.type == candy_type }
		@candies.delete_at(@candies.index(grabbed_candy))
	end

	def take(number)
		taken = []
		number.times do
			taken_candy = @candies.sample
			taken << taken_candy
			@candies.delete_at(@candies.index(taken_candy))
		end
		taken
	end

end