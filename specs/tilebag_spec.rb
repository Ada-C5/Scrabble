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

# test the number of tiles left in bag is correct
  describe "Tilebag#draw_tiles(num)" do
    it "gives the correct number of tiles left in bag" do
      my_bag = Tilebag.new
      my_bag.draw_tiles(5)
      result = my_bag.tiles_in_bag.values.reduce(0) { |sum, value| sum + value }
      result.must_equal(93)
    end
  end


  # test that if # of tiles requested is more than in the bag, will return the # of tiles left in bag
  describe "Tilebag#draw_tiles(num)" do
    it "gives the # of tiles left in bag without throwing an error when more tiles are requested than are in bag" do
      my_bag = Tilebag.new
      my_bag.draw_tiles(100)
      result = my_bag.tiles_in_bag.values.reduce(0) { |sum, value| sum + value }
      result.must_equal(0)
    end
  end

  # test that if # of tiles requested is more than in bag, will return the # of tiles availble without an error
  describe "Tilebag#draw_tiles(num)" do
    it "gives the number of tiles the player recieves, even if the number requested is more than the number in the bag, without throwing an error " do
      my_bag = Tilebag.new
      result = my_bag.draw_tiles(100)
      result.length.must_equal(98)
    end
  end


  #test that the remaining number of tiles is correct
  describe "Tilebag#tiles_remaining" do
    it "gives the remaining number of tiles left in bag after a certain number has been requested" do
      my_bag = Tilebag.new
      my_bag.draw_tiles(10)
      my_bag.tiles_remaining.must_equal(88) 
    end
  end
