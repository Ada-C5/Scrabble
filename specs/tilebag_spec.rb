require_relative './spec_helper'
require_relative '../lib/tilebag'

describe TileBag do

	# TEST 1
		it  "is an object we have access to" do
			TileBag.wont_be_nil
		end

	# TEST 2
	 it "draw tiles accepts an argument" do
	 	chacha = TileBag.new
	 	chacha.draw_tiles(7).wont_be_nil
	 end 

	# TEST 3
	it "draw tiles returns tiles drawn" do
		chacha = TileBag.new
		chacha.draw_tiles(7).wont_be_nil
	end 

	# TEST 4
	it "tiles remaining returns the length" do
		chacha = TileBag.new
		chacha.draw_tiles(7)
		assert_equal 91, chacha.tiles_remaining
	end 

	# TEST 5
	it "errors when more than seven tiles are drawn" do 
		chacha = TileBag.new
		assert_raises(ArgumentError) {chacha.draw_tiles(10)}
	end 
end
