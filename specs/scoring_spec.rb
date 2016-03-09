require_relative './spec_helper'
require_relative '../scrabble.rb'

#describe -> works with minitest, its for specs**
describe Scoring do
  it "will not be nil" do
    Scoring.wont_be_nil
  end


  describe "Scoring#score" do    #this is testing the method that will return the numeric value of the word
    TEST_CASES = {
      "CAT" => 5,
      "cat" => 5,
      "kittens" => 61
    }


    TEST_CASES.each do |word, score|
      it "should return the total score #{score} for the word #{word}" do
        Scoring.score(word).must_equal(score)
      end
    end
  end


  describe "Scoring#highest_score_from" do    #this is testing the method that will return the word with the greatest value
    TEST_CASES = {
      [ "cat", "kittens", "dog"] => "kittens",
      [ "fare", "mom"] => "mom",
      ["qzqzqz", "aeiounf"] => "aeiounf", #testing that between 2 words with the same score (60), the one with 7 tiles wins, even if  it's not the first word in array
      ["wadeiou", "kittens", "dog"] => "wadeiou" #testing that between 2 words with same score (61) with same numer of tiles (7), the first one wins
    }

    TEST_CASES.each do |array, highest_word|
      it "should return the word with the highest score #{highest_word} for the array of words #{array}" do
        Scoring.highest_score_from(array).must_equal(highest_word)
      end
    end


  end
end
