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

TEST_PLAYERS = [
  @jane,
  @bob,
  @fred
]

TEST_PLAYERS.each do |player|

  it "will return a value when total score is queried" do
  	player.total_score.wont_be_nil
  end

  it "will return the score when a play is made" do
    player.play("cat").must_equal(5)
  end

  it "will increase total_score when a word is played" do
    player.total_score.must_equal(5)
  end

  it "will push a word into the plays array" do
    player.plays.must_include("cat")
  end

  it "will return true if total score is >100" do
    player.won?.must_equal(true)
  end

	it "returns highest scoring word in an array" do
		player.highest_scoring_word(player.plays).must_equal("cupcake")
	end

  it "returns the score for highest scoring word" do
    player.highest_word_score.must_equal(67)
  end

  it "returns false if fred tries to play" do
    player.play("cat").must_equal(false)
  end

  # it "will return false if the player has won" do
  #   @jane.total_score
  # end
end
end
