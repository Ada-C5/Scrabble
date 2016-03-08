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

  describe "Scoring#word_points" do
    it "creates an array" do
      Scrabble::Scoring.word_points("dog").must_be_instance_of Array
    end

    it "doesn't contain nil values" do
      Scrabble::Scoring.word_points("dog").wont_be_nil
    end
  end

  describe "Scoring#score" do
    it "should give a total score as fixnum" do
      Scrabble::Scoring.score("dog").must_be_instance_of Fixnum
    end
  end
end
