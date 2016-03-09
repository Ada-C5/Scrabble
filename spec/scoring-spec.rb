require_relative './spec_helper'
require_relative '../lib/scoring'

describe Scoring do
  it "if it exists" do
    Scoring.wont_be_nil
  end

  describe "Scoring#score(word)" do
    HASH_CASES = {
      "cat" => 5,
      "CAT" => 5,
      "BOX" => 12,
      "box" => 12,
      "googles" => 59,
      "GOOgles" => 59
      # "m" => 3,
      # "f" => 4,
      # "v" => 4,
      # "k" => 5,
      # "j" => 8,
      # "z" => 10
    }

    HASH_CASES.each do |letters, score|
      it "Does it assign a score number to each letter" do
        Scoring.score(letters).must_equal(score)
      end
    end
  end

  describe "Scoring#highest_score_from(array_of_words)" do
    ARRAY_CASES = [
      "cat", "box"#, "phone", "butts", "purple", "farts", "hands"
    ]

    ARRAY_CASES.each do |array_word|
      it "Does it return the highest score" do
        Scoring.highest_score_from(array_word).max
      end
    end
  end
end
