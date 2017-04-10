class Circle
	PI = 3.14
	def initialize(r)
		@radius = r
	end
	
	def getArea
		return PI*(@radius**2)
	end
	
	def getCircumference
		return 2*PI*@radius
	end
end

circle = Circle.new(24)
puts circle.getArea
puts circle.getCircumference
