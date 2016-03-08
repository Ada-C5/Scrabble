require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/scoring'


describe Scoring do
  it "is an object we have access to" do
  Scoring.wont_be_nil
  end

  describe "LetterValue#convert" do
    TEST_CASES = {
    "A" => 1,
    }
    TEST_CASES.each do |letter, value|
      it "should return #{letter} for #{value}" do
        Scoring.convert(letter).must_equal(value)
      end
    end
  end
end
