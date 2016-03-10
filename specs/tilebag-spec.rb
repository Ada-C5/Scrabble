require_relative './spec_helper'
require_relative '../lib/tilebag'

describe TileBag do

  it "is an object we have access to" do
    TileBag.new.wont_be_nil
  end

  describe "tiles drawn from tile bag" do

    before do
      @tiles = TileBag.new
      @tiles.draw_tiles(5)
    end

    it "returns number of tiles from tile bag using draw_tiles method" do
      @tiles.draw_tiles(5).must_equal 5
    end

    it "returns the remaining number of tiles in the tile bag using tiles_remaining method" do
      @tiles.tiles_remaining.must_equal 97
    end

  end

end
