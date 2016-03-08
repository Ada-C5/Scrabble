require_relative './spec_helper'
require_relative '../lib/scoring'

describe Scoring do
  it "if it exists" do
    Scoring.wont_be_nil
  end

  describe Scoring.score do
    it "if it exists" do
      Scoring.score.wont_be_nil
    end
  end
end
