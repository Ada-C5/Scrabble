require 'simplecov'
SimpleCov.start

require_relative './spec_helper'
require_relative '../lib/scoring'
# require_relative '../scrabble'

describe Scrabble::Scoring do
  it "exists" do
    Scrabble::Scoring.wont_be_nil
  end

  describe Scrabble::Scoring::SCORE_CHART do
    it "corresponds to the correct points" do
      assert_equal true, Scrabble::Scoring::SCORE_CHART["A"] == 1
    end
  end

  describe "Scoring#letter_points" do
    it "should return points for given letter" do
      assert_equal Scrabble::Scoring::SCORE_CHART["A"], Scrabble::Scoring.letter_points("A")
    end

  end

end
