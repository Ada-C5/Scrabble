require_relative './spec_helper'
require_relative '../scrabble'


describe Scoring do
  it "is an object that isn't empty" do
    Scoring.wont_be_nil
  end


  describe "Scoring#score" do
    TEST_WORDS = ["cat", "program", "comma"]

    #creates an array with letters from the word (strings)
    # TEST_WORDS.each do |word|
    #   it "should create an array of the word that is same length as word" do
    #     Scoring.score(word).length.must_equal(word.length)
    #   end
    # end


    TEST_WORDS.each do |word|
      it "should return the value as points when given a letter" do
        Scoring.score(word).must_equal(points)
      end
    end

  end



end
#
# TEST_SCORES =
# {
# 1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
# 2 => ["D", "G"],
# 3 => ["B", "C", "M", "P"],
# 4 => ["F", "H", "V", "W", "Y"],
# 5 => ["K"],
# 8 => ["J", "X"],
# 10 => ["Q", "Z"]
# }
