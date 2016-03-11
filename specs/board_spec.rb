require_relative './spec_helper'

describe Scrabble::Board do
  it "is an object we have access to" do
    Scrabble::Board.wont_be_nil
  end

  describe "Board#board" do
    it "has a board consisting of an array" do
      game = Scrabble::Board.new
      game.board.must_be_kind_of Array
    end
  end

  describe "Board#place_tiles" do
    it "places first tile in given position" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.board[2][0].must_equal "c"
    end

    it "places second tile in given position" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.board[3][0].must_equal "a"
    end

    it "places third tile in given position" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.board[4][0].must_equal "t"
    end

    it "returns true if 'trogdor' placed accurately, 'r' in expected position" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.check_placement("cold", "across", 2, 0)
      game.place_tiles("cold", "across", 2, 0)
      game.check_placement("dog", "down", 2, 3)
      game.place_tiles("dog", "down", 2, 3)
      game.check_placement("trogdor", "across", 4, 0)
      game.place_tiles("trogdor", "across", 4, 0)
      game.board[4][6].must_equal "r"
    end
  end

  describe "Board#check_placement" do
    it "returns false if invalid tile placement given" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.check_placement("dog", "across", 2, 0).must_equal false
    end

    it "returns true if valid placement" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.check_placement("cold", "across", 2, 0).must_equal true
    end

    it "returns true if valid placement on third word play" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.check_placement("cold", "across", 2, 0)
      game.place_tiles("cold", "across", 2, 0)
      game.check_placement("dog", "down", 2, 3).must_equal true
    end

    it "returns true if valid placement on trogdor across, intersecting cat and dog" do
      game = Scrabble::Board.new
      game.place_tiles("cat", "down", 2, 0)
      game.check_placement("cold", "across", 2, 0)
      game.place_tiles("cold", "across", 2, 0)
      game.check_placement("dog", "down", 2, 3)
      game.place_tiles("dog", "down", 2, 3)
      game.check_placement("trogdor", "across", 4, 0).must_equal true
    end

end
end
