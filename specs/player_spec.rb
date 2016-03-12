require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/player'



describe Scrabble::Player do

  before do
    @our_tile_bag = Scrabble::Tilebag.new
  end

  it "this does exist" do
  Scrabble::Player.wont_be_nil
  end


  describe "InitializeInstanceVariable" do
    it "should create instance of player name" do
      Scrabble::Player.new("Tim", @our_tile_bag).must_be_instance_of(Scrabble::Player)
    end
  end

  describe "ReturnWordArray" do
    it "should return an Array of the words played by player" do
      Scrabble::Player.new("Tim", @our_tile_bag).plays.must_equal([])
    end
  end

  describe "PlayWordsMethodExists" do
    it "should input a new word to the plays array" do
      risha = Scrabble::Player.new("risha", @our_tile_bag)
      risha.play("RED")
      risha.plays.must_equal(["RED"])
    end
  end

  describe "PlayWordReturnValue" do
    it "should return score of word, if player has not won" do
        risha = Scrabble::Player.new("risha", @our_tile_bag)
        risha.play("RED").must_equal(4)
    end
  end

  describe "PlayWordReturnValue" do
    it "should return false if player has won" do
      risha = Scrabble::Player.new("risha", @our_tile_bag)
        risha.play("ZZZZZZZZZZZZ").must_equal(false)
    end
  end

  describe "TotalScore" do
    it "should return the total score of the played words array" do
      risha = Scrabble::Player.new("risha", @our_tile_bag)
        risha.play("RED")
        risha.play("HOTDOG")
        risha.total_score.must_equal(15)
    end
  end

  describe "Won?Methodreturn_True" do
    it "should return true if player has over 100 points" do
      risha = Scrabble::Player.new("risha", @our_tile_bag)
      risha.play("ZZZZZZZZZZZZ")
      risha.won?.must_equal(true)
    end
  end

  describe "Won?Methodreturn_false" do
    it "should return false if player has fewer than 100 points" do
      risha = Scrabble::Player.new("risha", @our_tile_bag)
      risha.play("RED")
      risha.won?.must_equal(false)
    end
  end

  describe "HighestScoringWord" do
    it "should return the highest scoring word" do
      risha = Scrabble::Player.new("risha", @our_tile_bag)
      risha.play("RED")
      risha.play("HOTDOG")
      risha.highest_scoring_word.must_equal("HOTDOG")
    end
  end

  describe "HighestWordScore" do
    it "should return the highest score" do
      risha = Scrabble::Player.new("risha", @our_tile_bag)
      risha.play("RED")
      risha.play("HOTDOG")
      risha.highest_word_score.must_equal(11)
    end
  end

  describe "PlayerClass-tiles_method" do
    it "should return a collection of tiles player can play(max7)" do
      puppet = Scrabble::Player.new("puppet", @our_tile_bag)
      puppet.tiles.length.must_equal(7)
    end
  end

  describe "DrawTiles" do
    it "should not do anything if bag is full" do
      betty = Scrabble::Player.new("betty", @our_tile_bag)
      betty.draw_tiles.must_be_nil
    end
  end

end
