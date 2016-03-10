require 'simplecov'
SimpleCov.start

require_relative './spec_helper'

TEST_WORD_ARRAY = %w[aerugo aether afeard affair affect affined affirm afflux afford affray]
TEST_WORD_ARRAY2 = %w[cat jeez foot furzy see]
TEST_WORD_ARRAY3 = %w[cat jeez foot furzy see bcmpbcg]
TEST_WORD_ARRAY4 = %w[bcmpbcg bcmpbcd ccmpbcd cccpbcd]


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

    it "should add a bonus of 50 points to words with 7 letters" do
      assert_equal 59, Scrabble::Scoring.score("dragons")
    end
  end


  describe "Scoring#self.word_scores(array_of_words)" do
    it "should be an array" do
      Scrabble::Scoring.word_scores(TEST_WORD_ARRAY2).must_be_instance_of Array
    end

    it "should not be empty" do
      refute Scrabble::Scoring.word_scores(TEST_WORD_ARRAY2).empty?
    end

    it "contains fixnums" do
      Scrabble::Scoring.word_scores(TEST_WORD_ARRAY2)[0].must_be_instance_of Fixnum
    end

    it "should provide correct scores for array_of_words" do
      assert_equal Scrabble::Scoring.word_scores(TEST_WORD_ARRAY2), [5, 20, 7, 20, 3]
    end
  end


  describe "Scoring#self.word_score_pairs(array_of_words)" do
    it "should be an array" do
      Scrabble::Scoring.word_score_pairs(TEST_WORD_ARRAY2).must_be_instance_of Array
    end

    it "should return the correct array of zipped word-score arrays" do
      assert_equal Scrabble::Scoring.word_score_pairs(TEST_WORD_ARRAY2),
      [["cat", 5], ["jeez", 20], ["foot", 7], ["furzy", 20], ["see", 3], ]
    end
  end


  describe "Scoring#self.find_ties(array_of_words)" do
    it "should return an array of tied word-score pairs" do
      assert_equal Scrabble::Scoring.find_ties(TEST_WORD_ARRAY2),
      [["jeez", 20], ["furzy", 20]]
    end
  end


  describe "Scoring#self.highest_score_from" do
    it "should find the highest scoring word with the least letters in the given array" do
      assert_equal "affined", (Scrabble::Scoring.highest_score_from(TEST_WORD_ARRAY))

      assert_equal "jeez", Scrabble::Scoring.highest_score_from(TEST_WORD_ARRAY2)

      assert_equal "bcmpbcg", Scrabble::Scoring.highest_score_from(TEST_WORD_ARRAY3)
    end

    it "return the first tied word that appears first in the given array" do
      REVERSE4 = TEST_WORD_ARRAY4.reverse
      assert_equal "bcmpbcg", Scrabble::Scoring.highest_score_from(TEST_WORD_ARRAY4)
      assert_equal "cccpbcd", Scrabble::Scoring.highest_score_from(REVERSE4)
    end

    it "should keep ties in their original order" do
      assert_equal [["bcmpbcg", 70], ["bcmpbcd", 70], ["ccmpbcd", 70], ["cccpbcd", 70]], Scrabble::Scoring.find_ties(TEST_WORD_ARRAY4).min_by(TEST_WORD_ARRAY4.length) { |pair| pair[0].length}
    end
  end

end
