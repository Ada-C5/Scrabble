require_relative './spec_helper'
require_relative '../lib/player'


describe Player do
  it "is an object we have access to" do
    Player.wont_be_nil
  end

    describe "Player#name" do
      it "has a name" do
        Player.name.wont_be_nil
      end
    end

    describe "Player#play" do
      it "returns score for word played" do
        Player.new("game").play("cat").must_equal(5)
      end

      it "player has already won: play return false" do
        play_cat = Player.new("game")
        play_cat.play("jacuzzi")
        play_cat.play("quizzed")
        play_cat.play("cat").must_equal(false)
      end
    end

    describe "Player#plays" do
      it "returns plays array with (single) play" do
        play_cat = Player.new("game")
        play_cat.play("cat")
        play_cat.plays.must_equal(["cat"])
      end

      it "returns plays array with multiple play" do
        play_cat = Player.new("game")
        play_cat.play("cat")
        play_cat.play("porcupine")
        play_cat.play("lol")
        play_cat.plays.must_equal(["cat", "porcupine", "lol"])
      end

      it "plays array does not include played word after player has already won" do
        play_cat = Player.new("game")
        play_cat.play("jacuzzi")
        play_cat.play("quizzed")
        play_cat.play("cat") # player has already won at this point
        play_cat.plays.must_equal(["jacuzzi", "quizzed"])
      end
    end

    describe "Player#total_score" do
      it "returns sum of scores of played words" do
        play_cat = Player.new("game")
        play_cat.play("cat")
        play_cat.play("dog")
        play_cat.total_score.must_equal(10)
      end
    end

    describe "Player#won?" do
      it "wins (returns true) if player has over 100 points" do
        play_cat = Player.new("game")
        play_cat.play("jacuzzi")
        play_cat.play("quizzed")
        play_cat.won?.must_equal(true)
      end

      it "returns false if player has less than 100 points" do
        play_cat = Player.new("game")
        play_cat.play("cat")
        play_cat.play("quizzed")
        play_cat.won?.must_equal(false)
      end
    end

    describe "Player#highest_scoring_word" do
      it "returns highest scoring word played" do
        play_cat = Player.new("game")
        play_cat.play("jazzily")
        play_cat.play("quizzed")
        play_cat.highest_scoring_word.must_equal("jazzily")
      end
    end

    describe "Player#highest_word_score" do
      it "returns highest word score" do
        play_cat = Player.new("game")
        play_cat.play("jacuzzi")
        play_cat.play("quizzed")
        play_cat.highest_word_score.must_equal(85)
      end
    end

end
