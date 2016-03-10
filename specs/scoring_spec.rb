require_relative './spec_helper'
require_relative '../scrabble'

describe Scrabble::Scoring do
  it "is an object that isn't empty" do
    Scrabble::Scoring.wont_be_nil
  end

  describe "Scrabble::Scoring#score" do
    TEST_WORDS = ["yes", "program", "pull", "comma"]

    TEST_WORDS.each do |word|
      it "should return the value as points when given a letter" do
        Scrabble::Scoring.score(word).must_be_kind_of Numeric
      end
    end

    TEST_WORDS.each do |word|
      it "should more than n 50 poins for 7 letter-word" do
        if word.length == 7
          Scrabble::Scoring.score(word).must_be :>, 50
        end
      end
    end


    it "should raise an error if word is longer than 7 letters" do
      proc{Scrabble::Scoring.score("elephant")}.must_raise ArgumentError 
    end

  end

  describe "Scrabble::Scoring#highest_score_from" do
    TEST_ARRAYS = [["cat", "program"], ["dogs", "hotdog"], ["yes", "pull"]]

    TEST_ARRAYS.each do |array|
    it "returns the word from array as a string" do
      Scrabble::Scoring.highest_score_from(array).must_be_instance_of String
    end
    end

      it "should return the shortest word when the score is tied" do
        Scrabble::Scoring.highest_score_from(["yes", "pull", "all"]).must_equal("yes")
      end

      it "should pick the first word in the supplied list, in case of tied multiple words with the same score and same length" do
        Scrabble::Scoring.highest_score_from(["dogs", "all", "pull"]).wont_be_same_as("pull")
      end

      it "shoud pick the word with seven letters over the one with fewer tiles, in case of tied multiple words with the same top score" do
      Scrabble::Scoring.highest_score_from(["program", "twelve"]).must_equal("program")
      # both, "program" and "twelve", have 12 points
      end
  end



end
