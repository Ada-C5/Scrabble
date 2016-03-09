require_relative './spec_helper'
require_relative '../scrabble'

#write a failing test
describe Scrabble::Player do
  it "Is there a class? Anything?" do
    Scrabble::Player.wont_be_nil
  end

 #make a bob, do certain plays and assert what's in bob
  it "returns a name" do
    bob = Scrabble::Player.new("Bob")
    bob.name.must_equal("Bob")
  end
end
