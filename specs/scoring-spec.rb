require_relative './spec_helper'
require_relative '../lib/scoring'

describe Scoring do
  it "is an object we have access to" do
    Scoring.wont_be_nil
  end

  describe "Scoring#score" do
    TEST_CASES = {
      "cat" => 5,
      "dog" => 5,
      "zoo" => 12,
      "AAAAAAA" => 57
    }


    TEST_CASES.each do |word,score|
      it "should return #{score} for the word #{word}" do
        Scoring.score(word).must_equal(score)
      end
    end
  end

  describe "Scoring#highest_score_from" do
    TEST_ARRAYS = {
      ['cat', 'dog', 'zoo'] => 'zoo',
      ['zebra', 'program', 'candy'] => 'program',
      ['cat', 'dog', 'sit'] => 'cat',
      ['cat', 'AAAAAAA', 'EEEEEEE'] => 'AAAAAAA',
      ['QZ', 'JX'] => 'QZ',
      ['JX', 'QZ'] => 'QZ',
      ['AAAAAAA', 'FFFFFFF'] => 'FFFFFFF',
      ['AAAA', 'DG'] => 'DG',
      ['QQQQQQ', 'FAAAAAA', 'FEEEEEE'] => 'FAAAAAA'
      # old test flawed: 'BDG' and 'AAAAAAA' both have scores of 7, 
      # but 'AAAAAAA' got 50 bonus points and that's why it won in 
      # the test (not because the word.length == 7 did anything--it didn't)
    }

    TEST_ARRAYS.each do |list, word|
      it "should return #{word} for the list #{list}" do
        Scoring.highest_score_from(list).must_equal(word)
      end
    end
  end
end
