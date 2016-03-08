require_relative './spec_helper'


describe Scrabble::Scoring do
  it "is an object we have access to" do
    Scrabble::Scoring.wont_be_nil
  end
end

describe "Scrabble::Score.score" do
  TEST_SCRABBLE_SCORE = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
  }

  TEST_SCRABBLE_SCORE.each do |points, letters_array|
    it "should return the scrabble score of #{points} for the letter #{letters_array}" do
      letters_array.each do |letter_from_array|
        Scrabble::Scoring.score(letter_from_array).must_equal points
      end
    end
  end

end
