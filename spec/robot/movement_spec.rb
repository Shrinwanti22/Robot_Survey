require 'spec_helper'

describe "movement" do

	let(:command1) { Movement.new("5 5 EAST","MOVE") }
	let(:command2) { Movement.new("1 3 EAST","MOVE RIGHT MOVE MOVE LEFT") }
	let(:command1) { Movement.new("5 5 EAST","MOVE") }
	let(:command1) { Movement.new("5 5 EAST","MOVE") }
	let(:command1) { Movement.new("5 5 EAST","MOVE") }
	let(:command1) { Movement.new("5 5 EAST","MOVE") }

	# it "returns the array of the commands" do
	# 	expect(command.moving).to eq(["MOVE","RIGHT","MOVE","LEFT"])
	# end

	it "returns the array of the positon" do
		expect(command1.moving).to eq([6,5,"EAST"])
	end

	it "moves the robot one space east" do
		expect(command2.moving).to eq([2,1,"EAST"])
	end

	it "rotates the robot left" do
		expect(command2.moving).to eq([2,1,"EAST"])
	end

	it "moves the robot and returns final position" do
		expect(command2.moving).to eq([2,1,"EAST"])
	end

	it "moves the robot and returns final position" do
		expect(command2.moving).to eq([2,1,"EAST"])
	end
	
	
end