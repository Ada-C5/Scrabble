require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/tilebag'

describe Scrabble::Tilebag do
  it "this does exist" do
    Scrabble::Tilebag.wont_be_nil
  end
end

describe "TileBag-Draw_Tiles" do
  before do
    @my_tiles = Scrabble::Tilebag.new
    @display_tiles = Scrabble::Tilebag.new
  end

  it "should return (num) number of random tiles and remove from tilebag" do
    our_tiles = @my_tiles.draw_tiles(3)
    our_tiles.length.must_equal(3)
    Scrabble::Tilebag::TILES.values.inject(:+).must_equal(94)
  end

  it "should return the number of tiles remaining in the bag" do 
  @display_tiles.draw_tiles(6)
  @display_tiles.tiles_remaining.must_equal(91)
  end
end
