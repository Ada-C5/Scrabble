require_relative './spec_helper'
require_relative '../scrabble'

describe Scrabble::Player do
  it "is an object that isn't empty" do
    Scrabble::Player.must_be_instance_of Class
  end

  PLAY_WORDS = ["pull", "yes"]

  describe "Scrabble::Player#plays" do
    jessica = Scrabble::Player.new("Jessica")

    it "initializes the player with a name" do
      Scrabble::Player.new("Jessica").must_be_instance_of Scrabble::Player

    end

    PLAY_WORDS.each do |word|
      it "play method returns arrays of words" do
        jessica.plays.must_be_kind_of Array
      end
    end
  end

  describe "Scrabble::Player#play(word)" do

    melissa = Scrabble::Player.new("Melissa")

    PLAY_WORDS.each do |word|
      it "should return the score of the word" do
        melissa.play(word).must_be_kind_of Numeric
      end
    end

    it "should return the score of Melissa" do
      melissa.play("melissa").must_equal 59
    end

  end

  describe "Scrabble::Player#total_score" do
    leah = Scrabble::Player.new("Leah")

    it "should return the sum of scores played" do
      test_words = ["melissa", "pull"]
      test_words.each do |word|
        leah.play(word)
      end
      leah.total_score.must_equal 65
    end
  end

  describe "Scrabble::Player#won?" do
    david = Scrabble::Player.new("David")

    test_words2 = ["melissa", "pull", "program"]
    it "should return true because David has > 100 points" do
      test_words2.each do |word|
        david.play(word)
      end
      david.won?.must_equal true
    end

    cristal = Scrabble::Player.new("Cristal")

    test_words3 = ["pull", "dog", "cat"]
    it "should return false because Cristal has < 100 points" do
      test_words3.each do |word|
        cristal.play(word)
      end
      cristal.won?.must_equal false
    end

  end

  describe "Scrabble::Player#highest_scoring_word" do
    jeremy = Scrabble::Player.new("Jeremy")

    test_words4 = ["program", "dog", "cat"]
    it "should return highest scoring word - 'program'" do
      test_words4.each do |word|
        jeremy.play(word)
      end
      jeremy.highest_scoring_word.must_equal "program"
    end

  end

  describe "Scrabble::Player#highest_word_score" do
    sophia = Scrabble::Player.new("Sophia")

    test_words5 = ["program", "dog", "cat"]
    it "should return highest score from highest scoring word - 62('program')'" do
      test_words5.each do |word|
        sophia.play(word)
      end
      sophia.highest_word_score.must_equal 62
    end

  end

  describe "Scrabble::Player#tiles" do

    it "returns string telling player they can only have 7 tiles if num > 7" do
      # bag = Scrabble::TileBag.new.draw_tiles(8)
      justine = Scrabble::Player.new("Justine")
      justine.play("cat")
      # justine.draw_tiles(5)
      justine.tiles.must_equal "You can't have more than 7 tiles!"
    end
  end

end
