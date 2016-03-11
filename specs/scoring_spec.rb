require_relative './spec_helper'
require_relative '../scrabble'

describe Scrabble::Scoring do
  # make sure there is Scoring class
  it "Is there a class? Anything?" do
    Scrabble::Scoring.wont_be_nil
  end

  # make sure constant array is initialized (array of arrays) holding letter/amount info
  it "Is the constant array of letter/amount correct?"
    Scrabble::Scoring.LETTERS.length.must_equal(26)
  end

  describe "Scrabble::Scoring#score" do
    # check score method, should return SCORE of played word
    it "WORD should generate the score of word being 8" do
      Scrabble::Scoring.score("WORD").must_equal(8)
    end

    # check that scoring on huge words words
    it "QRSTLNE should generate the score of 66" do
      Scrabble::Scoring.score("QRSTLNE").must_equal(66)
    end
  end

  describe "Scrabble::Scoring#highest_score_from" do
    # returns word in played_words that has the highest score
    it "returns the word in array with the highest score => ZEBRA " do
      Scrabble::Scoring.highest_score_from(["WORD", "CAT", "MEOW", "ZEBRA"]).must_equal("ZEBRA")
    end

    # checks that if a tie, word that was passed first in initial array wins
    it "returns ZEBRE because it occurs before ZEBRA and both have 16 points" do
      Scrabble::Scoring.highest_score_from(["WORD", "CAT", "ZEBRE", "ZEBRA"]).must_equal("ZEBRE")
    end

    # if tie return word using 7 tiles
    it "returns QRSTLNE because it has 7 letters and is tied for 16 pts" do
      Scrabble::Scoring.highest_score_from(["WORD", "QRSTLNE", "ZEBRE", "ZEBRA"]).must_equal("QRSTLNE")
    end

    # if tied return word with shortest length
    it "returns ZEBRA because it has the shortest length -- both 16 points" do
      Scrabble::Scoring.highest_score_from(["ZEDREE", "ZEBRA"]).must_equal("ZEBRA")
    end
  end
end
