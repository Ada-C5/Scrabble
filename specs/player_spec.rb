require 'simplecov'
SimpleCov.start

require_relative 'spec_helper'

describe Scrabble::Player do
# call Dede! It's time for Scrabble!
def dede
  dede = Scrabble::Player.new("Dede")
end

  it "exists" do
    Scrabble::Player.wont_be_nil
  end

  it "should require a name parameter" do
    dede = Scrabble::Player.new("Dede")
    assert_equal "Dede", dede.name
  end

  describe "Scrabble::Player#won?" do
    it "returns true for a winning score of 100 or more and false for any lower score" do
      dede = Scrabble::Player.new("Dede")
      dede.play("kitteh")
      dede.play("cat")
      dede.play("ZZZZZZZ")
      assert_equal true, dede.won?
    end
  end


  describe "Scrabble::Player#play(word)" do
    it "should push the played word into the words_played array" do
      dede = Scrabble::Player.new("Dede")
      dede.play("dumpling")
      assert dede.words_played.include?("dumpling")
    end

    # need to test this method for when won? is true
    it "returns the correct score for a played word" do
      dede = Scrabble::Player.new("Dede")
      assert_equal 14, dede.play("dumpling")
    end

    it "removes the letters in a played word from player_tiles" do
      dede = Scrabble::Player.new("Dede")
      new_tilebag = Scrabble::TileBag.new
      dede.draw_tiles(new_tilebag)
      print "HERE #{dede.player_tiles} END"
      sample_tiles = dede.player_tiles[0..2]
      dede.play(sample_tiles.join)
      p dede.player_tiles
    end
  end

  describe "Scrabble::Player#total_score" do
    it "returns the sum of scores in words_played" do
      dede = Scrabble::Player.new("Dede")
      dede.play("dumpling") # 14
      dede.play("donut") # 6
      dede.play("doodoo") # 8
      assert_equal 28, dede.total_score
    end
  end

  describe "Scrabble::Player#highest_scoring_word" do
    it "returns the highest-scoring word in words_played" do
      dede = Scrabble::Player.new("Dede")
      dede.play("dumpling") # 14
      dede.play("donut") # 6
      dede.play("doodoo") # 8
      assert_equal "dumpling", dede.highest_scoring_word
    end
  end

  describe "Scrabble::Player#highest_word_score" do
    it "returns the highest score from words_played" do
      dede = Scrabble::Player.new("Dede")
      dede.play("dumpling") # 14
      dede.play("donut") # 6
      dede.play("doodoo") # 8
      assert_equal 14, dede.highest_word_score
    end
  end

  describe "Scrabble::Player#draw_tiles" do
    it "draws a number of tiles from TileBag to make player_tiles have 7 items" do
      new_tilebag = Scrabble::TileBag.new
      doris = Scrabble::Player.new("Doris")
      doris.player_tiles = ["a", "b", "c"]
      p doris.player_tiles
      doris.draw_tiles(new_tilebag)
      p doris.player_tiles
    end
  end


end
