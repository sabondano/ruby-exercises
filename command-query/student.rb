class Student

	def initialize
		@grade = "C"
		@study_sessions = 0
		@slack_off_count = 0
	end

	def grade
		@grade
	end

	def study
		@study_sessions += 1
		case @study_sessions
			when 1
				@grade = "B"
			when 2
				@grade = "A"
		end
		@grade = "D" if @slack_off_count > 99
	end

	def slack_off
		@slack_off_count += 1
		case @slack_off_count
			when 1
				@grade = "D"
			when 2
				@grade = "F"
		end
		@grade = "B" if @study_sessions > 99
	end

end