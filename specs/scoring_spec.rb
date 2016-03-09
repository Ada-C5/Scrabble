require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/scoring'

describe Scrabble::Scoring do
  it "this does exist" do
  Scrabble::Scoring.wont_be_nil
  end
end

# describe Scrabble::Scoring do
  # it "is an object we have access to" do
  # Scrabble::Scoring.wont_be_nil
  # end

  describe "LetterValue#convert" do
    TEST_CASES = {
    "A" => 1,
    "D" => 2,
    "M" => 3,
    "F" => 4,
    "K" => 5,
    "J" => 8,
    "Q" => 10
    }
    TEST_CASES.each do |letter, value|
      it "should return #{letter} for #{value}" do
        Scrabble::Scoring.letter_value(letter).must_equal(value)
      end
    end
  end

  describe "WordScore" do
    it "should return total score for word" do
      Scrabble::Scoring.score("HOTDOG").must_equal(11)
    end
  end

    describe "WordScoreTest" do
      TEST_CASE = {
      "HOTDOG" => 11,
      "JOKER" => 16,
      "ZEBRA" => 16,
      }

      TEST_CASES.each do |word, value|
        it "should return #{word} for #{value}" do
          Scrabble::Scoring.score(word).must_equal(value)
        end
      end
    end

    describe "WordscoreBonus" do
      it "when 7 letters used, add 50 points to the total score." do
        Scrabble::Scoring.score("DEIRDRE").must_equal(59)
      end
    end

    # describe "CollectWordArray" do
      # it "Should create an array of words passed to it" do
        # Scrabble::Scoring.collect_word_array("HOTDOG").must_equal(["HOTDOG"])
      # end
    # end

    # describe "CollectScoreArray" do
      # it "Should create an array of scores passed to it" do
        # Scrabble::Scoring.collect_word_array("HOTDOG").must_equal([11])
      # end
    # end

    # describe "CombinedCollection" do
      # it "Should create a hash of arrays with words and their scores" do
        # Scrabble::Scoring.combined_collection.must_equal(["HOTDOG" => 11])
      # end
    # end

    # describe "HighestScore" do
      # it "should return the highets score in the array." do
        # Scrabble::Scoring.highest_score_from(["CAT", "ZEBRA"]).must_equal("ZEBRA")
      # end

    # describe "HighestScore" do
    #   it "should return the highet score with the fewest tiles" do
    #     Scrabble::Scoring.highest_score_from(["STONE", "PEE", "HI"]).must_equal("PEE")
    #   end
    #
#     describe "HighestScore" do
#       it "should return the first word if score and tiles are the same value." do
    #       Scrabble::Scoring.highest_score_from(["I", "HOT", "HIT"]).must_equal("HOT")
  #     end
    #end


    # describe "WordscoreCollecter" do
    #   it "stores the scored words into an array." do
    #     Scrabble::Scoring.score("WHALE").must_equal(["WHALE", 11])
      # end
      # end
