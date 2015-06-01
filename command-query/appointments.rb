class Appointments

	def initialize
		@appointments = []
	end

	def earliest
		@appointments.min
	end

	def at(date_and_time)
		@appointments << date_and_time
	end
end