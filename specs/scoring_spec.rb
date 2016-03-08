require_relative './spec_helper'
require_relative '../lib/scoring'

describe Scoring do
  it "is an object we have access to" do
    Scoring.wont_be_nil
  end

  describe "Scoring#score" do
    it "is an object we have access to" do
      Scoring.score("").wont_be_nil
    end

    TEST_CASES = {
       1 => "a", #easiest
       5 => "cat", #easier
       4 => "rail",
       12 => "zoo",
       34 + 50 => "jacuzzi" #should have 50 point bonus for 7 letters
    }
    TEST_CASES.each do |word_score, word|
     it "should return the score '#{ word_score }' for the word #{ word }" do
       Scoring.score(word).must_equal(word_score)
     end
   end

  end


  describe "Scoring#highest_score_from" do
    it "is an object we have accress to" do
      Scoring.highest_score_from(["string", "string"]).wont_be_nil
    end

    TEST_CASES = {
       "jacuzzi" => ["cat", "rail", "zoo", "jacuzzi"],
       "cat" => ["cat", "dog", "god", "met"],
       "k" => ["cat", "dog", "god", "met", "k"] # k also has score of 5 but is shorter

    }
    TEST_CASES.each do |winning_word, array_words|
     it "should return the winning word '#{ winning_word }' for the array of words #{ array_words }" do
       Scoring.highest_score_from(array_words).must_equal(winning_word)
     end
   end

  end




    #  TEST_CASES = {
    #    1 => "I",
    #    5 => "V",
    #    10 => "X",
    #    2 => "II",
    #    15 => "XV",
    #    4 => "IV",
    #    9 => "IX",
    #    14 => "XIV",
    #    30 => "",
    #    29 => "XXIX",
    #    34 => "XXXIV",
    #    49 => "XLIX",
    #    74 => "LXXIV"
    #  }
    #TEST_CASES.each do |arabic, roman|
    #  it "should return the roman '#{ roman }' for the arabic #{ arabic }" do
    #    Roman.convert(arabic).must_equal(roman)
    #  end

end
