require_relative './spec_helper'
require_relative '../lib/player'

describe Player do
  it "Does the Player Class exist test?" do
    Player.wont_be_nil
  end

  describe "Player#new(name)" do
    it "Does the class initialize with a name" do
      Player.new(name).wont_be_nil
    end
  end

  describe "Player#plays" do
    it "Does it exist" do
      "Player#plays.wont_be_nil"
    end

    it "returns an array of the words played by the player" do
      "Player#plays.wont_be_nil"
    end
  end
end
