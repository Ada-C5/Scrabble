require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/player'

describe Scrabble::Player do
  before do
    @jane = Scrabble::Player.new("Jane")
    @jane.play("cat")
    
    @bob = Scrabble::Player.new("bob")
    @bob.total_score
    
    @fred = Scrabble::Player.new("fred")
    @fred.play("cupcake")
    @fred.play("abalone")
  end



  it "exists" do
    Scrabble::Player.wont_be_nil
  end

  # this test works because a proc is an objct that holds the code and runs it at testing and returns the value
  it "has a name" do
    proc { Scrabble::Player.new() }.must_raise(ArgumentError)
  end
  
  it "has a readable name instance variable" do
    @jane.name.must_equal("Jane")
  end

  it "will return a value when total score is queried" do
    @jane.total_score.wont_be_nil
  end

  it "will return the score when a play is made" do
    @jane.play("cat").must_equal(5)
  end

  it "will increase total_score when a word is played" do
    @jane.total_score.must_equal(5)
  end

  it "will push a word into the plays array" do
    @jane.plays.must_include("cat")
  end

  it "will return true if total score is >100" do
    @fred.won?.must_equal(true)
  end


  TEST_ARRAYS = {
		["cat", "dog", "face", "data"] => "face",
		["talon", "cat", "pie", "dog"] => "cat",
		["jack", "benzol", "blazer", "cupcake"] => "cupcake"
	}


	TEST_ARRAYS.each do |array, word|
		it "selects the highest value word in the array" do
			Scrabble::Player.highest_scoring_word(array).must_equal(word)
		end

    it "selects the highest value word in the array and shows score value" do 
      Scrabble::Player.highest_word_score.must_equal(word.score)
    end

	end

  it "will return false if a winner tries to make a play" do
    @fred.play("cat").must_equal(false)
  end
end
