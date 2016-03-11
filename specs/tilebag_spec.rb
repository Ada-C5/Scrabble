require_relative './spec_helper'
require_relative '../scrabble'

describe Scrabble::TileBag do
  # make sure there is a TileBag class
  it "Is there a class? Anything?" do
    Scrabble::TileBag.wont_be_nil
  end

  # make sure a new instance creates a tilebag correctly
  it "should return 26 == number of letters in the alphabet" do
    game = Scrabble::TileBag.new
    game.tilebag.length.must_equal(26)
  end

  # make sure draw_tiles method words correctly with passed parameter
  it "should return length of selected tiles" do
    game = Scrabble::TileBag.new
    game.draw_tiles(5).length.must_equal(5)
  end

  # check tiles_remaining corresponds to draw_tiles
  it "should return number of tiles left in bag" do
    game = Scrabble::TileBag.new
    game.draw_tiles(40)
    game.tiles_remaining.must_equal(58)
  end

  # make sure tiles_remaining is zero when all tiles are removed
  it "should return 0" do
    game = Scrabble::TileBag.new
    game.draw_tiles(99)
    game.tiles_remaining.must_equal(0)
  end
end
