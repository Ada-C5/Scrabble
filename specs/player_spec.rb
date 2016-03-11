require_relative './spec_helper'
require_relative '../scrabble'

#write a failing test
describe Scrabble::Player do
  it "Is there a class? Anything?" do
    Scrabble::Player.wont_be_nil
  end

 #make a bob, do certain plays and assert what's in bob
  it "returns a name" do
    bob = Scrabble::Player.new(name: "Bob", words: ["house", "cat", "zebra"])
    bob.name.must_equal("Bob")
  end

  # make sure played_words returns array of words
  it "returns the played words" do
    bob = Scrabble::Player.new(name: "Bob", words: ["house", "cat", "zebra"])
    bob.played_words.must_equal(["house", "cat", "zebra"])
  end

  # test play(word) returns score
  it "returns score of newly played word" do
    bob = Scrabble::Player.new(name: "Bob", words: ["house", "cat"])
    bob.play("zebra").must_equal(16)
  end

  # test total score based on array of words
  it "returns the total score of all the words in the array" do
    bob = Scrabble::Player.new(name: "Bob", words: ["zebre","zebra"])
    bob.total_score.must_equal(32)
  end

  # test to see if player won based on total score = true
  it "returns true/false based on player winning" do
    bob = Scrabble::Player.new(name: "Bob", words: ["zzzzzzz","zzzzzzz"])
    bob.won?.must_equal true
  end

  # test to see if player has NOT won => false
  it "returns true/false based on player winning" do
    bob = Scrabble::Player.new(name: "Bob", words: ["cat"])
    bob.won?.must_equal false
  end

  # test to see if player has NOT won => false
  it "returns true/false based on player winning" do
    bob = Scrabble::Player.new(name: "Bob", words: ["cat"])
    bob.play("zebra")
    bob.played_words.must_equal(["CAT", "ZEBRA"])
    bob.total_score.must_equal(21)
    bob.play("zzzzzzz")
    bob.total_score.must_equal(141)
    bob.play("bees").must_equal false
  end

  # test to see highest_scoring_word returns correctly
  it "returns highest scoring word" do
    bob = Scrabble::Player.new(name: "Bob", words: ["cat", "house", "zebra", "ZZZZZZZ"])
    bob.highest_scoring_word.must_equal "ZZZZZZZ"
  end

    # test to see highest_word_score returns correctly
  it "returns highest score" do
    bob = Scrabble::Player.new(name: "Bob", words: ["cat", "house", "zebra", "ZZZZZZZ"])
    bob.highest_word_score.must_equal 120
  end

  it "returns highest score" do
    bob = Scrabble::Player.new(name: "Bob", words: ["cat", "house", "zebra", "ZZZZZZZ"])
    bob.highest_word_score.must_equal 120
  end

end
