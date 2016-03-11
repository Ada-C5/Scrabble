require_relative './spec_helper'
require_relative '../scrabble.rb'

describe Tilebag do                   #this is testing to make sure Tilebag exists
  it "will not be nil" do
    Tilebag.wont_be_nil
  end
end

#this tests to make sure the initialize method exists
describe "Tilebag#new" do
  it "does the class initialize a collection of default tiles" do
    my_bag = Tilebag.new
    my_bag.tiles_in_bag.wont_be_nil
  end
end

# test that it takes correct number of tiles
  describe "Tilebag#draw_tiles(num)" do
    it "samples a given number of tiles from bag" do
      my_bag = Tilebag.new
      my_bag.draw_tiles(5).length.must_equal(5)
    end
  end

# test the tiles left in bag is correct
  describe "Tilebag#draw_tiles(num)" do
    it "gives the correct number of tiles left in bag" do
      my_bag = Tilebag.new
      my_bag.draw_tiles(5)
      result = my_bag.tiles_in_bag.values.reduce(0) { |sum, value| sum + value }
      result.must_equal(93)
    end
  end
