require 'simplecov'
SimpleCov.start

require_relative 'spec_helper'

describe Scrabble::Player do
DORIS = Scrabble::Player.new("Doris")
  it "exists" do
    Scrabble::Player.wont_be_nil
  end

  it "should require a name parameter" do
    assert_equal "Doris", DORIS.name
  end

  describe "Scrabble::Player#play(word)" do
    it "should push the played word into the words_played array" do
      DORIS.play("dumpling")
      assert DORIS.words_played.include?("dumpling")
    end

    # need to test this method for when won? is true
    it "returns the correct score for a played word" do
      assert_equal 14, DORIS.play("dumpling")
    end
  end

  describe "Scrabble::Player#total_score" do
    it "returns the sum of scores in words_played" do
      DORIS.play("dumpling") # 14
      DORIS.play("donut") # 6
      DORIS.play("doodoo") # 8
      assert_equal 28, DORIS.total_score
    end

  end
end
