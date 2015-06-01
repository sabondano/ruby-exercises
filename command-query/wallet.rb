require 'pry'

class Wallet

	def initialize
		@cents = 0
		@wallet = []
		@coins = {
				penny: 1,
				nickel: 5,
				dime: 10,
				quarter: 25,
				dollar: 100
		}
	end

	def cents
		@wallet.reduce(0) do |total_cents, coin|
			total_cents + @coins[coin]
		end
	end

	def <<(coin)
		@wallet << coin
	end

	def take(*coins)
		coins.each do |coin_to_take_out|
			@wallet.delete_at(@wallet.index(coin_to_take_out)) if @wallet.any? { |coin| coin == coin_to_take_out }
		end
	end
end


