require_relative './spec_helper'

describe Scrabble::Player do
  it "is an object we have access to" do
    Scrabble::Player.wont_be_nil
  end

    describe "Player#name" do
      it "has a name" do
        Scrabble::Player.name.wont_be_nil
      end
    end

    describe "Player#play" do
      it "returns score for word played" do
        Scrabble::Player.new("game").play("cat").must_equal(5)
      end

      it "player has already won: play return false" do
        game = Scrabble::Player.new("game")
        game.play("jacuzzi")
        game.play("quizzed")
        game.play("cat").must_equal(false)
      end
    end

    describe "Player#plays" do
      it "returns plays array with (single) play" do
        game = Scrabble::Player.new("game")
        game.play("cat")
        game.plays.must_equal(["cat"])
      end

      it "returns plays array with multiple play" do
        game = Scrabble::Player.new("game")
        game.play("cat")
        game.play("porcupine")
        game.play("lol")
        game.plays.must_equal(["cat", "porcupine", "lol"])
      end

      it "plays array does not include played word after player has already won" do
        game = Scrabble::Player.new("game")
        game.play("jacuzzi")
        game.play("quizzed")
        game.play("cat") # player has already won at this point
        game.plays.must_equal(["jacuzzi", "quizzed"])
      end
    end

    describe "Player#total_score" do
      it "returns sum of scores of played words" do
        game = Scrabble::Player.new("game")
        game.play("cat")
        game.play("dog")
        game.total_score.must_equal(10)
      end
    end

    describe "Player#won?" do
      it "wins (returns true) if player has over 100 points" do
        game = Scrabble::Player.new("game")
        game.play("jacuzzi")
        game.play("quizzed")
        game.won?.must_equal(true)
      end

      it "returns false if player has less than 100 points" do
        game = Scrabble::Player.new("game")
        game.play("cat")
        game.play("quizzed")
        game.won?.must_equal(false)
      end
    end

    describe "Player#highest_scoring_word" do
      it "returns highest scoring word played" do
        game = Scrabble::Player.new("game")
        game.play("jazzily")
        game.play("quizzed")
        game.highest_scoring_word.must_equal("jazzily")
      end
    end

    describe "Player#highest_word_score" do
      it "returns highest word score" do
        game = Scrabble::Player.new("game")
        game.play("jacuzzi")
        game.play("quizzed")
        game.highest_word_score.must_equal(85)
      end
    end

    describe "Player#tiles" do
      it "is a collection of random tiles" do
        game = Scrabble::Player.new("game")
        game.tiles.length.must_equal(7)
      end
    end

    describe "Player#draw_tiles" do
      it "draws tiles" do
        game = Scrabble::Player.new("game")
        game.tiles.pop #simulates removing tile for letter play
        game.draw_tiles
        game.tiles.length.must_equal(7)
      end
    end

    describe "Player#draw_tiles" do
      it "will draw tiles for letters removed due to words played" do
        game = Scrabble::Player.new("game")
        string = game.tiles.join
        game.play(string)
        game.remove_tiles(string)
        game.tiles.length.must_equal(7-7) # we joined all 7 tiles
        game.draw_tiles
        game.tiles.length.must_equal(7)
      end
    end
end
