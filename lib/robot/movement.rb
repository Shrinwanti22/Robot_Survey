#Moves the robot according to the commands given

class Movement

	attr_reader :position, :command

	def initialize(position, command)
		@position = position
		@command = command		
	end

	def moving
		commands_array = []
		current_position = []
		parse_commands = Parser.new(@command)
		parse_position = Parser.new(@position)
		commands_array = parse_commands.parsing_commands
		current_position = parse_position.parsing_position

		for i in 0 .. commands_array.length
			if commands_array[i] = "MOVE"
				if current_position[2] == "EAST"
					current_position[0] += 1
				elsif current_position[2] == "WEST"
					current_position[0] -= 1
				elsif current_position[2] == "NORTH"
					current_position[1] += 1
				elsif current_position[2] == "SOUTH"
					current_position[1] -= 1
				end

			elsif commands_array[i] = "LEFT"
				self.rotate(commands_array[i], current_position[2])

			elsif commands_array[i] = "RIGHT"
				self.rotate(commands_array[i], current_position[2])
			end
		end

		return current_position
	end

	def rotate(dir, facing)
		directions = ["NORTH","EAST","SOUTH","WEST","NORTH"]
		for i in 0 .. directions.length
			if directions[i] == facing && dir == "RIGHT"
				final_dir = directions[i+1]
			elsif directions[i] == facing && dir == "LEFT"
				final_dir = directions[i-1]
			end
		end
		return final_dir
	end
end