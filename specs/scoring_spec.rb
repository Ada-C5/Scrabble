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
  end

  describe "Scrabble::Scoring#highest_score_from" do

    it "returns the word in array with the highest score" do
      Scrabble::Scoring.highest_score_from(["WORD", "CAT", "MEOW", "ZEBRA"]).must_equal("ZEBRA")
    end

    it "returns an error message" do
      Scrabble::Scoring.highest_score_from(["WORD", "CAT", "ZEBRE", "ZEBRA"]).must_be_nil
    end

  end

  describe "Scrabble::Scoring#test" do
    it "Should generate 'MEOW'" do
      Scrabble::Scoring.test.must_equal("MEOW")
    end
  end
end
