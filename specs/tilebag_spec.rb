require_relative './spec_helper'
require_relative '../lib/tilebag'

describe TileBag do
  it "is an object we have access to" do
    TileBag.wont_be_nil
  end

  describe "TileBag#default_tiles" do
     it "is an object we have access to" do
       test_bag = TileBag.new()
       test_bag.default_tiles.wont_be_nil
    end
  end

  describe "TileBag#draw_tiles" do
    it "is an object we have access to" do
      test_bag = TileBag.new()
      test_bag.draw_tiles(1).wont_be_nil
    end

    it "returns a number (num) of random tiles" do
      test_bag = TileBag.new()
      random_tiles = test_bag.draw_tiles(5)
      random_tiles.length.must_equal(5)
    end

    it "random tiles are a - z" do
      test_bag = TileBag.new()
      random_tiles = test_bag.draw_tiles(5)
      random_tiles.all? { |tile| ('a'..'z').include? tile }.must_equal(true)

    end

    it "removes drawn tiles from default tile array, tiles_remaining returns number tiles remaining" do
      test_bag = TileBag.new()
      test_bag.draw_tiles(5)
      test_bag.tiles_remaining.must_equal(93)
    end



  end

end
