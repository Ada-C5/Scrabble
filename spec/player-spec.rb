require_relative './spec_helper'
require_relative '../lib/player'

describe Player do
  it "Does the Player Class exist test?" do
    Player.wont_be_nil
  end

  describe "Player#new" do
    it "Does the class initialize with a name" do
      self.new.wont_be_nil
    end

  end
end
