require_relative './spec_helper'
require_relative '../lib/player'

describe Player do 

	# TEST 1
	it "Player is an object we have access to" do
		Player.wont_be_nil
	end

	# TEST 2
	it "should return a name when entered" do 
		fran = Player.new("Fran")
		assert_equal "Fran", fran.name_return
	end

	# TEST 3
	it "should allow the player to play a word" do 
		fran = Player.new("Fran")
		assert_equal [8], fran.play("word") 
	end 

	# TEST 4
	# 	it "should return a name when entered" do 
	# 	chacha = Player.new("ChaCha", 200)
	# 	assert_equal false, chacha.play("word")
	# end
end
