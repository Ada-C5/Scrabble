require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/tilebag'

describe Scrabble::Tilebag do

  before do
    @tilebag = Scrabble::Tilebag.new
  end

	it "exists" do
		Scrabble::Tilebag.wont_be_nil
	end

  it "has the correct letters" do
    @tilebag.tiles.length.must_equal(Scrabble::DEFAULT_TILES.length)
  end

  it "returns a tile when you draw one" do
  	Scrabble::DEFAULT_TILES.must_include(@tilebag.draw_tiles(1)[0])
  end

  it "returns same number of tiles as is drawn" do
    @tilebag.draw_tiles(2).length.must_equal(2)
  end

  it "returns the correct number of remaining tiles after a play" do
    @tilebag.draw_tiles(3)
    @tilebag.tiles_remaining.must_equal(Scrabble::DEFAULT_TILES.length - 3)
  end

end
