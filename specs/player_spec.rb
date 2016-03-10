require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/player'

describe Scrabble::Player do
  it "this does exist" do
  Scrabble::Player.wont_be_nil
  end
end

describe "InitializeInstanceVariable" do
  it "should create instance of player name" do
    Scrabble::Player.new("Tim").must_be_instance_of(Scrabble::Player)
  end
end

describe "ReturnWordArray" do
  it "should return an Array of the words played by player" do
    Scrabble::Player.new("Tim").plays.must_equal([])
  end
end
