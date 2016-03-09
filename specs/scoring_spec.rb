require_relative './spec_helper'
require_relative '../scrabble'


describe Scoring do
  it "is an object that isn't empty" do
    Scoring.wont_be_nil
  end


  describe "Scoring#score" do
    TEST_WORDS = ["cat", "program", "comma", "elephant"]



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

    TEST_WORDS.each do |word|
      it "should raise an error if word is longer than 7 letters" do
          if word.length > 7
            Scoring.score(word).must_raise ArgumentError("NO")
          end
      end
    end

  end

  describe "Scoring#highest_score_from" do
    TEST_ARRAYS = [["cat", "program"], ["dogs", "hotdog"]]

    TEST_ARRAYS.each do |array|
    it "returns the word from array as a string" do
      Scoring.highest_score_from(array).must_be_instance_of String
    end
  end

  end
end
