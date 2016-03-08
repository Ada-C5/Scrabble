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

    describe "Scoring#score(word)" do
      it "Does it split the word into an array" do
        assert Scoring.score("word") == ["w", "o", "r", "d"]
        return
      end
    end

    describe "Scoring#score(word)" do
      it "Does it split the word into an array" do
        assert Scoring.score("google") == ["g", "o", "o", "g", "l", "e"]
        return
      end
    end

    describe "Scoring#score" do
      it "Does it assign a score number to each letter" do
        TEST_CASES = {
          a => 1,
          e => 1,
          u => 1,
          d => 2,
          b => 3,
          m => 3,
          f => 4,
          v => 4,
          k => 5,
          j => 8,
          z => 10
        }

      end
    end

  end
end
