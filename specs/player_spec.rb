require_relative './spec_helper'
require_relative '../scrabble'

describe Scrabble::Player do
  it "is an object that isn't empty" do
    Scrabble::Player.must_be_instance_of Class
  end

  describe "Scrabble::Player#plays" do
    PLAY_WORDS = ["pull", "yes"]

    it "initializes the player with a name" do
      Scrabble::Player.new("Test User").must_be_instance_of Scrabble::Player

    end

    test_user = Scrabble::Player.new("Test User")
    PLAY_WORDS.each do |word|
    it "play method returns arrays of words" do
      test_user.play(word).must_be_kind_of Array
    end
    end
  end
end
