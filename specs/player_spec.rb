require_relative './spec_helper'

describe Scrabble::Player do
  it "should be an object we have access to" do
    Scrabble::Player.wont_be_nil
  end
end

describe "Scrabble::Player#name" do
  # returns the value of the @name instance variable
  it "should return the value 'Joe' when player instance is named Joe" do
    joe = Scrabble::Player.new(name: "Joe")
    joe.name.must_equal ("Joe")
  end
end

describe "Scrabble::Player#plays" do
  joe = Scrabble::Player.new(name: "Joe")

  it "should return the score '5' for the word 'cat'" do
    joe.play("cat").must_equal 5
  end

end

describe "Scrabble::Player#play(word)" do
  mary = Scrabble::Player.new(name: "Mary")

  it "should return false if player has already won" do
    # starts mary off with a bunch of words already played, then adds "cat"
    array_of_words = ["nose", "aaaaaad", "eeeeeed", "frog", "rrrrrrr", "qqqqqj"]

    # create an each method that will play the words in the array one by one
    array_of_words.each do |word_played|
      mary.play(word_played)
    end

    mary.play("cat").must_equal false
  end
end

describe "Scrabble::Player#total_score" do
  jane = Scrabble::Player.new(name: "Jane")
  it %!should return '243' for array_of_words = ["nose", "aaaaaad", "eeeeeed", "frog", "rrrrrrr", "qqqqqj"]! do
    array_of_words = ["nose", "aaaaaad", "eeeeeed", "frog", "rrrrrrr", "qqqqqj"]

    # create an each method that will play the words in the array one by one
    array_of_words.each do |word_played|
      jane.play(word_played)
    end

    jane.total_score.must_equal 243
  end
end

describe "Scrabble::Player#highest_scoring_word" do
  april = Scrabble::Player.new(name: "April")

  # it should return the highest scoring played WORD
  it %!should return "frog" for the words played "frog" and "nose"! do
    april.play("frog")
    april.play("nose")
    april.highest_scoring_word.must_equal "frog"
  end
end

  # # returns an array of the words played by the player
  # joe = Scrabble::Player.new(name: "Joe")
  # it "should return [] played by Joe" do
  #   # joe = Scrabble::Player.new(name: "Joe")
  #   joe.plays.must_equal []
  # end

  # adds input word to the plays array
  # it "should return ['Japan', 'Eritrea', 'Mexico'] when joe.play('Mexico')" do
  #   joe.play("Japan")
  #   joe.play("Eritrea")
  #   joe.play("Mexico")
  #   joe.plays.must_equal ["Japan", "Eritrea", "Mexico"]
  # end
