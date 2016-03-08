require_relative './spec_helper'
require_relative '../lib/scoring'

#
# Need a minimum of 8 specs for the scoring class 
#

describe Scoring do 
	it "is an object we have access to" do
		Scoring.wont_be_nil
	end

	it "is a class method we have access to" do 
		Scoring.score("test").wont_be_nil
	end 

	it "validate fifty point bonus for using all seven tiles in a turn" do 
	# require = 66 (50 + 16)
		Scoring.score("REQUIRE")
				return 66 
		end 
end