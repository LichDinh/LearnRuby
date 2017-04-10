class Student
	def initialize(name, roll_num)
		@name = name
		@roll_num = roll_num
	end

	def display
		puts @name
		puts @roll_num
	end

	def setAge
		puts "Please enter student's age"
		@age = gets.chomp.to_i
		puts @age
	end

	def setMarks
		puts "Please enter student's marks"
		@marks = gets.chomp.to_i
		puts @marks
	end
end

student1 = Student.new("minh", 23)
student1.display
student1.setAge
student1.setMarks
