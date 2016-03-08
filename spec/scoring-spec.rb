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

    # SCORE_CHART = [
    #   [a, e, i, o, u, l, n, r, s, t = 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    #   [d, g = 2, 2],
    #   [b, c, m, p = 3, 3, 3, 3],
    #   [f, h, v, w, y = 4, 4, 4, 4, 4],
    #   [k = 5],
    #   [j, x = 8, 8],
    #   [q, z = 10, 10]
    # ]

    describe "Scoring#score(word)" do
      it "Does it split the word into an array" do
        assert Scoring.score("word") == ["w", "o", "r", "d"]
        return
      end
    end

  end
end
