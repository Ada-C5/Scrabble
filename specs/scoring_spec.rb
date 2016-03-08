require_relative './spec_helper'
require_relative '../scrabble.rb'

#describe -> works with minitest, its for specs**
describe Scoring do
  it "will not be nil" do
    Scoring.wont_be_nil
  end
end

describe "Scoring#score" do
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
