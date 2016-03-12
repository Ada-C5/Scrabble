require_relative './spec_helper'

describe Scrabble::TileBag do
  it "should be an object we have access to" do
    Scrabble::TileBag.wont_be_nil
  end
end

describe "Scrabble::TileBag.default_tiles" do
  it "should be an instance variable" do
    Scrabble::TileBag.new.default_tiles.wont_be_nil
  end
end

describe "Scrabble::TileBag#draw_tiles" do
  it "should return 5 random tiles" do
    joe_tiles = Scrabble::TileBag.new
    joe_tiles.draw_tiles(5).length.must_equal 5
  end

  it "should return 7 random tiles" do
    joe_tiles = Scrabble::TileBag.new
    joe_tiles.draw_tiles(7).length.must_equal 7
  end

end

describe "Scrabble::TileBag#tiles_remaining" do
  # returns the number of tiles remaining in the bag
  it "should return 98 for draw_tiles(0)" do
    joe_tiles = Scrabble::TileBag.new
    joe_tiles.tiles_remaining.must_equal 98
  end

  it "should return '93' for draw_tiles(5)" do
    joe_tiles = Scrabble::TileBag.new
    joe_tiles.draw_tiles(5)
    joe_tiles.tiles_remaining.must_equal 93
  end

end
