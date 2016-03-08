require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/scoring'

describe Scrabble::Scoring do
	it "exists" do
		Scrabble::Scoring.wont_be_nil
	end

	TEST_CASES = {
		"sat" => 3,
		"hotdog" => 11,
		"puppet" => 12,
		"cupcake" => 67,
		"queen" => 14
	}

	TEST_CASES.each do |word, score|
		it "returns total score value for the word" do
			Scrabble::Scoring.score(word).must_equal(score)
		end
	end

end
