require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/tilebag'

describe Scrabble::Tilebag do
  it "this does exist" do
    Scrabble::Tilebag.wont_be_nil
  end
end

describe "TileBag-Draw_Tiles" do
  it "should return (num) number of random tiles and remove from tilebag" do
    @my_tiles = Scrabble::Tilebag.new
    our_tiles = @my_tiles.draw_tiles(3)
    our_tiles.length.must_equal(3)
    @my_tiles.default_tiles.values.inject(:+).must_equal(94)
  end
end

describe "TilesRemaining" do
  it "should return the number of tiles remaining in the bag" do
  @display_tiles = Scrabble::Tilebag.new
  @display_tiles.draw_tiles(6)
  @display_tiles.tiles_remaining.must_equal(91)
  end
end
