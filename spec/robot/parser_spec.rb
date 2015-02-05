require 'spec_helper'

describe Parser do
	let(:command1) {Parser.new("5 5 NORTH")}
	let(:command2) {Parser.new("MOVE RIGHT MOVE LEFT")}


	it "parses the command for direction" do
		 expect((command1.parsing_position)).to eq([5,5,"NORTH"])
	end	

	it "parses the command" do
		 expect((command2.parsing_commands)).to eq(["MOVE","RIGHT","MOVE","LEFT"])
	end

end