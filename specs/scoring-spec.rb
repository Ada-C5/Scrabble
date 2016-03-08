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
      ['cat', 'AAAAAAA', 'EEEEEEE'] => 'AAAAAAA'
    }

    TEST_ARRAYS.each do |list, word|
      it "should return #{word} for the list #{list}" do
        Scoring.highest_score_from(list).must_equal(word)
      end
    end
  end
end
