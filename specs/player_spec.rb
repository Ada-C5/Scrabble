require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/player'

describe Scrabble::Player do
  before do
    @jane = Scrabble::Player.new("Jane")
    @jane.play("cat")

    @bob = Scrabble::Player.new("bob")
    @bob.total_score
  end

  it "exists" do
		Scrabble::Player.wont_be_nil
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



  # it "will return false if the player has won" do
  #   @jane.total_score
  # end

end
