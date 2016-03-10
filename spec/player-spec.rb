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
      assert_nil(Player.plays, failure_message = nil)
    end

    # it "returns an array of the words played by the player" do
    #   assert Player.plays.include?([])
    # end
  end

  describe "Player#plays" do
    it "Does it exist plays" do
      "Player#plays.wont_be_nil"
    end
  end

  describe "Player#play(word)" do
    it "Does it exist play(word)" do
      "Player#play(name).wont_be_nil"
    end
  end

  describe "Player#total_score" do
    it "Does it exist total_score" do
      "Player#total_score.wont_be_nil"
    end
  end

  describe "Player#won?" do
    it "Does it exist won?" do
      "Player#won?.wont_be_nil"
    end
  end

  describe "Player#highest_scoring_word" do
    it "Does it exist highest_scoring_word?" do
      "Player#highest_scoring_word.wont_be_nil"
    end
  end

  describe "Player#highest_word_score?" do
    it "Does it exist highest_word_score" do
      "Player#highest_word_score.wont_be_nil"
    end
  end
end
