require_relative './spec_helper'
require_relative '../scrabble'

# write a failing test!!!
describe Scrabble::Scoring do
  it "Is there a class? Anything?" do
    Scrabble::Scoring.wont_be_nil
  end

  describe "Scrabble::Scoring#score" do
    it "WORD should generate the score of word being 8" do
      Scrabble::Scoring.score("WORD").must_equal(8)
    end

    it "word should generate the score of word being 8" do
      Scrabble::Scoring.score("word").must_equal(8)
    end

    it "QRSTLNE should generate the score of 66" do
      Scrabble::Scoring.score("QRSTLNE").must_equal(66)
    end

  end

  describe "Scrabble::Scoring#highest_score_from" do

    it "returns the word in array with the highest score => ZEBRA " do
      Scrabble::Scoring.highest_score_from(["WORD", "CAT", "MEOW", "ZEBRA"]).must_equal("ZEBRA")
    end

    it "returns ZEBRE because it occurs before ZEBRA and both have 16 points" do
      Scrabble::Scoring.highest_score_from(["WORD", "CAT", "ZEBRE", "ZEBRA"]).must_equal("ZEBRE")
    end

    it "returns QRSTLNE because it has 7 letters and is tied for 16 pts" do
      Scrabble::Scoring.highest_score_from(["WORD", "QRSTLNE", "ZEBRE", "ZEBRA"]).must_equal("QRSTLNE")
    end

  end

  describe "Scrabble::Scoring#test" do
    it "Should generate 'MEOW'" do
      Scrabble::Scoring.test.must_equal("MEOW")
    end
  end
end
