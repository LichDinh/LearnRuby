class Time
	def initialize(hours, minutes)
		@hours = hours
		@minutes = minutes
	end
	
	def addTime(hours, minutes)
		@sum_min = @minutes + minutes
		@sum_h = @hours + hours
		if @sum_min > 60
			@sum_h += 1
			@min = @sum_min - 60
		end
		puts "#{@sum_h} hours #{@min} minutes"
	end
	
	def hours
		return @hours
	end
	
	def minutes
		return @minutes
	end
end

time1 = Time.new(4, 50)
time2 = Time.new(6, 55)
puts time = time1.addTime(time2.hours, time2.minutes)

