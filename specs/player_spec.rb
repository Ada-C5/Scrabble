require_relative './spec_helper'
require_relative '../scrabble.rb'

describe Player do                   #this is testing to make sure Player exists
  it "will not be nil" do
    Player.wont_be_nil
  end
end


 describe "Player#new(name)" do
  it "does the class initialize a name" do
    Player.new(name).wont_be_nil

  end
end



describe "Player#plays" do
  TEST_CASES = {
    
  }


  TEST_CASES.each do |name, words_played|
    it "should return the name of the player #{name} for the word #{word}" do
      Scoring.score(word).must_equal(score)
    end
  end
end
