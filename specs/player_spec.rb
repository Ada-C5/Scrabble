require_relative './spec_helper'
require_relative '../scrabble'

describe Scrabble::Player do
  it "is an object that isn't empty" do
    Scrabble::Player.must_be_instance_of Class
  end

  PLAY_WORDS = ["pull", "yes"]
  TEST_USER = Scrabble::Player.new("Jessica")

  describe "Scrabble::Player#plays" do

    it "initializes the player with a name" do
      Scrabble::Player.new("Jessica").must_be_instance_of Scrabble::Player

    end

    PLAY_WORDS.each do |word|
    it "play method returns arrays of words" do
      TEST_USER.plays.must_be_kind_of Array
    end
    end
  end

  describe "Scrabble::Player#play(word)" do

    PLAY_WORDS.each do |word|
      it "should return the score of the word" do
        TEST_USER.play(word).must_be_kind_of Numeric
      end
    end

    it "should return the score of Melissa" do
      TEST_USER.play("melissa").must_equal 59
    end

  end

  describe "Scrabble::Player#total_score" do
    melissa = Scrabble::Player.new("Meli")
    it "should return the sum of scores played" do
    test_words = ["melissa", "pull"]
    test_words.each do |word|
       melissa.play(word)
      end
    melissa.total_score.must_equal 65
    end
  end
end
