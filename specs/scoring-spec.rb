require_relative './spec_helper'
require_relative '../lib/scoring'

describe Scoring do
  it "is an object we have access to" do
    Scoring.wont_be_nil
  end

  describe "Scoring#score" do
    # TEST_CASES = {
    #   "cat" => 5
    # }

    it "should return ['C', 'A', 'T'] for the word cat" do
      Scoring.score("cat").must_equal(['C', 'A', 'T'])
    end
  end

end