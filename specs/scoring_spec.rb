require_relative './spec_helper'
require_relative '../lib/scoring'

#
# Need a minimum of 8 specs for the scoring class
#

describe Scoring do

	ARRAY_OF_WORDS = ["dog", "bird", "quiz", "require"]

	it "is an object we have access to" do
		Scoring.wont_be_nil
	end

	it "is a class method we have access to" do
		Scoring.score("test").wont_be_nil
	end

	it "validates scoring is correct" do
		Scoring.score("pig")
			return 6
		end

	it "validates 50-point bonus is applied" do
		Scoring.score("require")
			return 66
	end

	it "returns the highest scoring word" do
		Scoring.highest_score_from(ARRAY_OF_WORDS)
		 return "quiz"
	end

	it "returns the highest scoring word" do
		Scoring.highest_score_from(ARRAY_OF_WORDS)
		 return "require"
	end

end
