require_relative './spec_helper'
require_relative '../lib/player'

describe Player do
    it "is an object we have access to" do
    Player.wont_be_nil

  end

  describe "Player#name" do
    it "returns sarah when initialized with sarah" do
      Player.new("sarah").name.must_equal "sarah"

    end
  end

  describe "Player#plays" do
    it "returns an Array of words played by the player" do
      Player.new.

    end

  end

end
