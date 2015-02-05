#Takes the command from the user and splits the command

class Parser

	def initialize(command)
		@command = command
	end

	def parsing_position
		x_coord, y_coord, direction = @command.split(" ")
		coords = Coordinate.new(x_coord, y_coord, direction)
		coords.return_coordinates
	end

	def parsing_commands
		commands_array = @command.split(" ")
	end

	
end




