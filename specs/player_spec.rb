require_relative './spec_helper'
require_relative '../scrabble.rb'

describe Player do                   #this is testing to make sure Player exists
  it "will not be nil" do
    Player.wont_be_nil
  end
end

#this tests to make sure the initialize method exists
 describe "Player#new(name)" do
  it "does the class initialize a name" do
    Player.new(name).wont_be_nil

  end
end


describe "Player#play(word)" do
  mindy = Player.new("mindy")

    it "should return the score of the word played" do
      mindy.play("cat").must_equal(5)
    end

    it "should return the array of words played with the new word added" do
      mindy.words_played.must_equal(["cat"])
    end

end
