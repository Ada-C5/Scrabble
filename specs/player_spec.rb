require_relative './spec_helper'
require_relative '../lib/player'
require_relative '../lib/tilebag'

describe Player do 
 WORDS_PLAYED = ["GOAT", "PUPPY", "MONKEY", "CAT", "WHALES", "IGUANA"]
 HIGH_SCORE_TEST = [200] 

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
	it "should return an array of words played" do 
		fran = Player.new("Fran")
		fran.play("goat")
		fran.play("puppy")
		fran.play("monkey")
		fran.play("cat")
		fran.play("whales")
		fran.play("iguana")
		assert_equal WORDS_PLAYED, fran.plays
	end

	# TEST 5
	it "return false if player plays when score is >= 100" do 
		chacha = Player.new("ChaCha", HIGH_SCORE_TEST)
		assert_equal false, chacha.play("word") 
	end

	# TEST 6
	it "should return true for winning" do
		chacha = Player.new("ChaCha", HIGH_SCORE_TEST)
	 	assert true, chacha.won? 
	end

	# TEST 7 
	it "should return total score of words played so far" do 
		fran = Player.new("Fran")
		fran.play("goat")
		fran.play("puppy")
		assert_equal 19, fran.total_score
	end 
	# TEST 8 
	it "should return highest scoring word played" do 
		fran = Player.new("Fran")
		fran.play("goat")
		fran.play("puppy")
		assert_equal "PUPPY", fran.highest_scoring_word
	end 
	# TEST 9
	it "should return highest word score" do 
		fran = Player.new("Fran")
		fran.play("goat")
		fran.play("puppy")
		assert_equal 14, fran.highest_word_score
	end 
	# TEST 10
	it "returns the score of a word played" do 
		fran = Player.new("Fran")
		assert_equal [14], fran.play("puppy")
	end 
	# TEST 11
	it "player class accepts one argument" do 
		assert_raises(ArgumentError) {fran = Player.new}
	end 

	# TEST 12
	it "raises an error if too many tiles are drawn" do 
		fran = Player.new("Fran")
		assert_raises(ArgumentError) {fran.tiles(10)}
	end

	# TEST 13
	it "returns a number of tiles when drawn" do 
		fran = Player.new("Fran")
		refute_equal nil, fran.draw_tiles(7)
	end 
end 

