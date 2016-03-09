require_relative "./spec_helper"
require_relative "../scrabble"


describe Scrabble::Scoring do
  it "it is an object we have acccess to" do
    Scrabble::Scoring.wont_be_nil
  end

  TEST_SCORE = {
      "zebra" => 16,
      "xylophone" => 0,
      "develop" => 63,
      "pigsty" => 12,
      "doggies" => 60,
      "zenith" => 18,
      "cramps" => 12,
      "naysays" => 63
    }

  ARRAY_OF_WORDS = [
      "zebra",
      "xylophone",
      "develop",
      "pigsty",
      "doggies",
      "zenith",
      "cramps",
      "naysays"
  ]
  describe "Scoring#score" do
    TEST_SCORE.each do |word, score|
    	it "should return #{ score } for '#{ word }'" do
    	 Scoring.score(word).must_equal(score)
    	end
    end
  end

  describe "Scoring#highest_score_from" do

      it "should return the word with the highest score" do
        array = TEST_SCORE.max_by{|word,score| score}
        best_word = array[0]
        Scoring.highest_score_from(ARRAY_OF_WORDS).must_equal(best_word)

        it "should return the word with fewest"
      end
  end
end
