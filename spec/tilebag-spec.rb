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

end
