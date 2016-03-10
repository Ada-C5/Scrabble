require_relative './spec_helper'
require_relative '../lib/player'

describe Scrabble::Player do 
	# TEST 1
	it "is an object we have access to" do
		Scrabble::Player.wont_be_nil
	end

end
