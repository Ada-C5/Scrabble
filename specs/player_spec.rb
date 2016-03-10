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

describe "Scrabble::Player#plays and #play(word)" do
  # returns an array of the words played by the player
  joe = Scrabble::Player.new(name: "Joe")
  it "should return [] played by Joe" do
    # joe = Scrabble::Player.new(name: "Joe")
    joe.plays.must_equal []
  end

  # adds input word to the plays array
  it "should return ['Japan', 'Eritrea', 'Mexico'] when joe.play('Mexico')" do
    joe.play("Japan")
    joe.play("Eritrea")
    joe.play("Mexico")
    joe.plays.must_equal ["Japan", "Eritrea", "Mexico"]
  end
end
