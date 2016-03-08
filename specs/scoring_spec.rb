require 'simplecov'
SimpleCov.start

require_relative './spec_helper'
require_relative '../lib/scoring'
# require_relative '../scrabble'

SCORE_CHART_TEST = [
Scrabble::Scoring::SCORE_CHART[1].include?("A")
]

describe Scrabble::Scoring do
  it "exists" do
    Scrabble::Scoring.wont_be_nil
  end

  describe Scrabble::Scoring::SCORE_CHART do
    it "includes 'A'" do
      assert_equal true, SCORE_CHART_TEST[0]
    end
  end

  describe "Scoring#search_score_chart" do
    it "should return correct key value pair for the input letter" do
      assert_equal Scrabble::Scoring::SCORE_CHART[1], Scrabble::Scoring.search_score_chart("O")
    end

  end

end
