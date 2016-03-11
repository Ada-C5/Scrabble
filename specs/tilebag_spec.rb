require_relative "./spec_helper"
require_relative "../scrabble"

describe Tilebag do
  it "is an object we have access to" do
    Tilebag.wont_be_nil
  end
end

describe "Tilebag#tdraw_tiles" do
	nadine_bag = Tilebag.new
  it "should return out of tiles" do
    nadine_bag.draw_tiles(100).must_equal("Out of tiles")
  end
end

describe "Tilebag#tiles_remaining" do
	nadine_bag = Tilebag.new
  it "should return the 98 tiles remaining in the game" do
    nadine_bag.tiles_remaining.must_equal(98)
  end
end

describe "Tilebag#tiles_remaining2" do
	suzanne_bag= Tilebag.new
  it "should return the 91 tiles remaining in the game" do
    suzanne_bag.draw_tiles(7)
    suzanne_bag.tiles_remaining.must_equal(91)
  end
end

describe "Tilebag#tiles_remaining3" do
  jeremy_bag=Tilebag.new
  it "should return the 0 tiles remaining in the game" do
    jeremy_bag.draw_tiles(98)
    jeremy_bag.tiles_remaining.must_equal(0)
  end
end





 # TILEBAG = {
 #   "a"=>9, "b"=>2, "c"=>2, "d"=>4, "e"=>12, "f"=>2, "g"=>3, "h"=>2, "i"=>9,
 #   "j"=>1, "k"=>1, "l"=>4, "m"=>2, "n"=>6, "o"=>8, "p"=>2, "q"=>1, "r"=>6,
 #   "s"=>4, "t"=>6, "u"=>4, "v"=>2, "w"=>2, "x"=>1, "y"=>2, "z"=>1
 #   }
 #
 # describe "Tilebag#tilebag" do
 #    bag = Tilebag.new
 #   it "should give an array with all tiles" do
 #      bag.must_equal(TILEBAG)
 #    end
