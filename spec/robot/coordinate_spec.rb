require 'spec_helper'

describe Coordinate do
	let(:robot1) {Coordinate.new(0,0," ")}


	it "returns the position of the robot" do
		 expect((robot1.return_coordinates)).to eq([0,0," "])
	end	
end