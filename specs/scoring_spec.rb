require_relative './spec_helper'
require_relative '../scrabble'

# write a failing test!!!
describe Scrabble::Scoring do
  it "Is there a class? Anything?" do
    Scrabble::Scoring.wont_be_nil
  end

  describe "Scrabble::Scoring#score" do
    it "Should generate the score of word being 8" do
      Scrabble::Scoring.score("WORD").must_equal(8)
    end
  end

  describe "Scrabble::Scoring#test" do
    it "Should generate 'MEOW'" do
      Scrabble::Scoring.test.must_equal("MEOW")
    end
  end
end

# end

  # it "Is there a method?" do
  #   self.highest_score_from(["a", "b", "x"]).wont_be_nil
  # end
#end
