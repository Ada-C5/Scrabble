require_relative './spec_helper'


describe Scrabble::Scoring do
  it "is an object we have access to" do
    Scrabble::Scoring.wont_be_nil
  end
end

describe "Scrabble::Score.score" do
  # TEST_SCRABBLE_SCORE = {
  #   1 => [A, E, I, O, U, L, N, R, S, T],
  #   2 => [D, G],
  #   3 => [B, C, M, P],
  #   4 => [F, H, V, W, Y],
  #   5 => [K],
  #   8 => [J, X],
  #   10 => [Q, Z]
  # }

  it "should return the scrabble score of 1 for the letter 'A' " do
    Scrabble::Scoring.score("A").must_equal (1)
  end

  it "should return the scrabble score of 3 for the letter 'M' " do
    Scrabble::Scoring.score("M").must_equal (3)
  end


end
