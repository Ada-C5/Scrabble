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


end
