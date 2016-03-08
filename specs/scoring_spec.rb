require_relative './spec_helper'
require_relative '../lib/scoring'

# Need to write a test that turns red. Maybe "contains a scoring class" test
describe Scoring do 
	it "is an object we have access to" do
		Scoring.wont_be_nil
	end
end