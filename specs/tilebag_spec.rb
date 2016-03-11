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

  it "should return number of tiles left in bag" do
    game = Scrabble::TileBag.new
    game.draw_tiles(40)
    game.tiles_remaining.must_equal(58)
  end

end
