#Launches the application
class Application

	def initialize
		@move = Movement.new
	end

	def start
		print "$ "
		input = gets.chomp
		while input != 'exit' do 
    		
    		print "$"
    		input = gets.chomp
    	end
  	end

  	def check
		input = Kernel.gets.chomp
    	
  	end
end