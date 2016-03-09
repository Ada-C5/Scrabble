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

end
