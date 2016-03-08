require_relative './spec_helper'
require_relative '../scrabble'

# write a failing test!!!
describe Scoring do
  it "Is there a class? Anything?" do
    Scoring.wont_be_nil
  end

describe "Scoring#score" do
  it "Should generate the score of word being 8" do
    self.score("WORD").must_equal(8)
  end
end

  # it "Is there a method?" do
  #   self.highest_score_from(["a", "b", "x"]).wont_be_nil
  # end
#end