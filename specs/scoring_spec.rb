require_relative './spec_helper'
require_relative '../scrabble'


describe Scoring do
  it "is an object that isn't empty" do
    Scoring.wont_be_nil
  end


  describe "Scoring#score" do
    TEST_WORDS = ["cat", "program", "comma"]



    TEST_WORDS.each do |word|
      it "should return the value as points when given a letter" do
        Scoring.score(word).must_be_kind_of Numeric
      end
    end

    TEST_WORDS.each do |word|
      it "should more tah n 50 poins for 7 letter-word" do
        if word.length == 7
          Scoring.score(word).must_be :>, 50
        end
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
