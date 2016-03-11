require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/player'
require_relative '../lib/tilebag'

describe Scrabble::Player do
  before do
    @testbag = Scrabble::Tilebag.new

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

  it "will return false if a winner tries to make a play" do
    @fred.play("cat").must_equal(false)
  end

	it "selects the highest value word in the array" do
		@fred.highest_scoring_word(@fred.plays).must_equal("cupcake")
	end

  it "selects the highest value word in the array and shows score value" do
    @fred.highest_word_score.must_equal(67)
  end

  it "will return the tiles when queried" do
    @bob.draw_tiles(@testbag)
    @bob.must_respond_to(:tiles)
  end

  it "will fill tiles when tiles are drawn" do
    @bob.draw_tiles(@testbag)
    @bob.tiles.length.must_equal(7)
  end

end
