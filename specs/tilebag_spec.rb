require 'simplecov'
SimpleCov.start

require_relative 'spec_helper'

describe Scrabble::TileBag do

  new_tilebag = Scrabble::TileBag.new

  describe "TileBag#draw_tiles" do
    it "should return an array of tiles" do
      new_tilebag.draw_tiles(0).must_be_instance_of Array
    end

    it "the returned array length should equal the number parameter" do
      assert_equal 4, new_tilebag.draw_tiles(4).length
    end

    it "should mutate the original array by the number of tiles draw" do
      new_tilebag = Scrabble::TileBag.new
      assert_equal 98, new_tilebag.tilebag.length
      new_tilebag.draw_tiles(4)
      assert_equal 94, new_tilebag.tilebag.length
    end
  end


end
