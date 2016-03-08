require_relative './spec_helper'
require_relative '../lib/scoring'

describe Scoring do
  it "if it exists" do
    Scoring.wont_be_nil
  end

  describe "Scoring#score(word)" do
    it "if it exists" do
      "Scoring#score(word).wont_be_nil"
    end

    SCORE_CHART = {
      a, e, i, o, u, l, n, r, s, t => 1,
      d, g => 2,
      b, c, m, p => 3,
      f, h, v, w, y => 4,
      k => 5,
      j, x => 8,
      q, z => 10
    }

  end
end
