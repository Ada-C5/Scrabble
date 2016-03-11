require_relative './spec_helper'
require_relative '../lib/tilebag'

describe TileBag do

  it "is an object we have access to" do
    TileBag.new.wont_be_nil
  end

  describe "tiles drawn from tile bag" do

    before do
      @tiles = TileBag.new
      @tiles_five_drawn = @tiles.draw_tiles(5)
    end

    it "returns number of tiles from tile bag using draw_tiles method" do
      @tiles_five_drawn.length.must_equal 5
    end

    it "returns an array of tiles from the tile bag using draw_tiles method" do
      @tiles_five_drawn.must_be_instance_of Array
    end

    it "returns the remaining number of tiles in the tile bag using tiles_remaining method" do
      @tiles.tiles_remaining.must_equal 92
    end

    it "returns 92 if we draw 5 tiles using the tiles_remaining method" do
      @tiles.draw_tiles(5)
      @tiles.tiles_remaining.must_equal 87
    end

  end

end
