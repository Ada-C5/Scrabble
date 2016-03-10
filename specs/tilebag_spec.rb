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
  end

  it "should return (num) number of random tiles" do
    our_tiles = @my_tiles.draw_tiles(3)
    our_tiles.length.must_equal(3)

  end

end
