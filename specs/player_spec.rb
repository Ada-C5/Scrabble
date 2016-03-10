require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/player'

describe Scrabble::Player do
  before do
    @player_one = Scrabble::Player.new("Jane")
  end

  it "exists" do
		Scrabble::Player.wont_be_nil
	end

  it "has a readable name instance variable" do
    @player_one.name.must_equal("Jane")
  end

  it "will return a value when total score is queried" do
  	@player_one.total_score.wont_be_nil
  end

  it "will return a value when a play is made" do
  	@player_one.play("jack").wont_be_nil
  end

end
