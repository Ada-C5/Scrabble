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
      # Scoring.score("google") == ["g", "o", "o", "g", "l", "e"]
      TEST_CASES = {
        "a" => 1,
        #{}"e" => 1,
        # "u" => 1,
        # "d" => 2,
        "b" => 3,
        # "m" => 3,
        # "f" => 4,
        # "v" => 4,
        # "k" => 5,
        # "j" => 8,
        # "z" => 10
      }

      TEST_CASES.each do |letters, score|
        it "Does it assign a score number to each letter" do
          Scoring.score(letters).must_equal(score)
        end
      end
    end
  end
end
