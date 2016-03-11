require_relative './spec_helper'
require_relative '../scrabble'

#write a failing test
describe Scrabble::TileBag do
  it "Is there a class? Anything?" do
    Scrabble::TileBag.wont_be_nil
  end

  it "should return 26 == number of letters in the alphabet" do
    game = Scrabble::TileBag.new
    game.tilebag.length.must_equal(26)
  end

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

  # remove all the tiles
  it "what happens when you remove 99 tiles!?!?!?" do
    game = Scrabble::TileBag.new
    game.draw_tiles(99).must_equal("dogs")
  end


end
