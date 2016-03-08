require_relative './spec_helper'
require_relative '../scrabble'


describe Scoring do
  it "is an object that isn't empty" do
    Scoring.must_be_nil
  end
end

TEST_SCORES =
{
  1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["K"],
  8 => ["J", "X"],
  10 => ["Q", "Z"]
}


    #
    # TEST_SCORES.each do |points, letter|
    #   it "should return letters '#{letter}' with #{points} points" do
    #     Scoring.score_letters(points).must_equal(letter)
    #   end
    # end

# TEST_SCORES.each do |points, letter|
#   it "should return the letter #{letter} worth #{points} point(s)" do
#     Scoring.score_letters.must_equal(letter)
#   end
# end

# describe Scoring do
#   it "has a letter A that equal 1 point" do
#   SCORES.values[0][0].must_equal "A"
# end
# end
