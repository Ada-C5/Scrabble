require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/scoring'

describe Scoring do
	it "exists" do
		Scoring.wont_be_nil
	end


	it "returns total score value" do
		Scoring.score("sat").must_equal(3)
	end
end
