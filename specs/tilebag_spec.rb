require_relative "./spec_helper"
require_relative "../scrabble"

describe Tilebag do
  it "is an object we have access to" do
    Tilebag.wont_be_nil
  end
end

describe "Tilebag#tiles_remaining" do
  it "should return the tiles remaining in the game" do
    Tilebag.tiles_remaining.must_equal(98)
  end
  it "should return the tiles remaining in the game" do
    Tilebag.draw_tiles(7)
    Tilebag.tiles_remaining.must_equal(91)
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
