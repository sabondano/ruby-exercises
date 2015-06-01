require 'pry'

class TrickOrTreater

	attr_reader :dressed_up_as, :bag, :sugar_level

	def initialize(dressed_up_as)
		@dressed_up_as = dressed_up_as.style
		@bag = Bag.new
		@sugar_level = 0
	end

	def has_candy?
		@bag.empty? ? false : true
	end

	def <<(candy)
		@bag << candy
	end

	def candy_count
		@bag.count
	end

	def eat
		candy = @bag.take(1)[0]
		@sugar_level += candy.sugar
	end

end