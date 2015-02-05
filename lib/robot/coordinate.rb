#returns the coordinates of the robot

class Coordinate

	attr_reader :coordinate

	def initialize(x_coordinate, y_coordinate, direction)
		@coordinate = []
		@coordinate[0] = x_coordinate.to_i
		@coordinate[1] = y_coordinate.to_i
		@coordinate[2] = direction
	end

	def return_coordinates
	  	@coordinate	
	end


end