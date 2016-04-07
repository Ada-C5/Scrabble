require_relative './spec_helper'
require_relative '../lib/tilebag'


describe TileBag do
  it "Does the TileBag Class exist test?" do
    TileBag.wont_be_nil
  end

  describe "#draw_tiles" do
    it "Does it return number of random tiles" do
      test_tiles = TileBag.new
      tile_list = test_tiles.draw_tiles(7)
      tile_list.length.must_equal(7)
    end
  end

  describe "#tiles_remaining" do
    it "Does it return tiles remaining" do
      test_tiles = TileBag.new
      test_tiles.tiles_remaining.must_equal(91)
    end
  end
end



#TRYING TO FIGURE OUT IF IT IS SUBTRACTING CORRECT TILES. CURRENTLY UNABLE TO MAKE IT WORK. WILL COME BACK.
# describe "#draw_tiles" do
#
#   it "Does it subtract the correct tiles from tile chosen?" do
#     test_tiles = TileBag.new
#     test_tiles.draw_tiles(2).must_equal(3)
#
#   end
# end
