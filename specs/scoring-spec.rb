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
    it "should return ['zoo'] for the list ['cat', 'dog', 'zoo']" do
      Scoring.highest_score_from(['cat', 'dog', 'zoo']).must_equal(['zoo'])
    end
  end
end
