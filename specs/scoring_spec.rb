require_relative "./spec_helper"
require_relative "../scrabble"


describe Scrabble::Scoring do
  it "it is an object we have acccess to" do
    Scrabble::Scoring.wont_be_nil
  end

  TEST_SCORE = {
      "jogged" => 16,
      "zebra" => 16,
      "xylophone" => 0,
      "develop" => 63,
      "pigsty" => 12,
      "doggies" => 60,
      "zenith" => 18,
      "cramps" => 12,
      "naysays" => 63,
      "mixup" => 16
    }

  HASH_WORDS = {
    "jogged" => ["jogged"],
    "zebra" => ["jogged", "zebra", "pigsty", "mixup", "cramps"],
    "develop" => ["jogged", "zebra", "develop", "pigsty", "doggies", "naysays", "mixup", "cramps", "zenith"]
    }
  describe "Scoring#score" do
    TEST_SCORE.each do |word, score|
    	it "should return #{ score } for '#{ word }'" do
    	 Scoring.score(word).must_equal(score)
    	end
    end
  end

  describe "Scoring#highest_score_from" do
    HASH_WORDS.each do |word,array|
      it "should return #{word} with the highest score and tiebreaker" do
      Scoring.highest_score_from(array).must_equal(word)

      #it "should return the word with fewest tiles" do
      end
    end
  end
end
