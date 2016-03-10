require_relative './spec_helper'

describe Scrabble::Player do
  it "should be an object we have access to" do
    Scrabble::Player.wont_be_nil
  end

describe "Scrabble::Player#name" do
  it "should return the value 'Joe' when player instance is named Joe" do
    joe = Scrabble::Player.new(name: "Joe")
    joe.name.must_equal ("Joe")
  end

end
end
