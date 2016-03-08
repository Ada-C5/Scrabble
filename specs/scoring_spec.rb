require 'simplecov'
SimpleCov.start

require_relative './spec_helper'
require_relative '../lib/scoring'

SCORE_CHART_TEST = [
Scoring::SCORE_CHART[1].include?("A")
]

describe Scoring do
  it "exists" do
    Scoring.wont_be_nil
  end

  describe Scoring::SCORE_CHART do
    it "includes 'A'" do
      assert_equal true, SCORE_CHART_TEST[0]
    end
  end

end
