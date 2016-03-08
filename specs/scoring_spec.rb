require_relative "./spec_helper"
require_relative "../scrabble"


describe Scrabble::Scoring do
  it "it is an object we have acccess to" do
    Scrabble::Scoring.wont_be_nil
  end

    TEST_SCORE = {
    	"zebra" => 16,
      "xylophone" => 0,
      "develop" => 63
    }

    TEST_SCORE.each do |word, score|
    	it "should return #{ score } for '#{ word }'" do
    	Scoring.score(word).must_equal(score)
    	end
    end
end
