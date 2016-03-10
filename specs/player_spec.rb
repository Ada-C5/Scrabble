require_relative './spec_helper'
require_relative '../lib/player'

describe Player do 
	# TEST 1
	it "Player is an object we have access to" do
		Player.wont_be_nil
	end

	# TEST 2
	it "should return a name when entered" do 
		assert_equal "Player", Player.name # This is sloppy, fix on Thursday 
	end

	# Test 3
	it "should allow the player to play a word" do 
		assert_equal "word", Player.play("word") # this is also garbage, fix Thursday 
	end 

end
