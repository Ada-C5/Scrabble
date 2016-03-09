require_relative './spec_helper'
require_relative '../lib/scoring'

# ACCOUNT FOR PLAYER ENTERING NON-LETTERS
describe Scoring do
  it "is an object we have access to" do
    Scoring.wont_be_nil
  end

  describe "Scoring#score" do
    it "is an object we have access to" do
      Scoring.score("").wont_be_nil
    end

    TEST_CASES_SCORE = {
      # test corner cases
      0 => '', # can enter empty string?
      7 => "LoVe", # does case matter?
      6 => "POOR",
      34 + 50 => "jacuzzi", # 50 point bonus for 7 letters
      # -------------------
      1 => "a", #easiest
      5 => "cat", #easier
      4 => "rail",
      35 + 50 => "jazzily",
      12 => "zoo"
    }

    TEST_CASES_SCORE.each do |word_score, word|
     it "should return the score '#{ word_score }' for the word #{ word }" do
       Scoring.score(word).must_equal(word_score)
     end
   end
  end

  describe "Scoring#highest_score_from" do
    it "is an object we have access to" do
      Scoring.highest_score_from(['']).wont_be_nil
    end

    TEST_CASES_ARRAY = {
      "dog" => ["dog"], # does a one-word array work?
      "jacuzzi" => ["cat", "rail", "zoo", "jacuzzi"], # tested single 7 letter word
      "quizzed" => ["quizzed", "wat"], #considered testing case of shorter word having greater value than 7 letter, near impossible to test
      "k" => ["cat", "dog", "god", "met", "k"], # tied scores, but shortestwins
      "cat" => ["cat", "dog", "god", "met"], # tied scores, same length - first listed should win
      "zizzled" => ["zizzled", "jazzily", "quizzed", "cat"] # case of multiple 7 letter tie (same score, same length, first listed should win... make sure it works with seven letters!)
    }
    TEST_CASES_ARRAY.each do |winning_word, array_words|
     it "should return the winning word '#{ winning_word }' for the array of words #{ array_words }" do
       Scoring.highest_score_from(array_words).must_equal(winning_word)
     end
   end
  end

end
