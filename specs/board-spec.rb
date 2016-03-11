require_relative '../lib/board'
require_relative './spec_helper'

describe Board do
  before do
    @board = Board.new
  end

  it "is an object we have access to" do
    @board.wont_be_nil
  end


  it "should be an instance of Array" do
    @board.board.must_be_instance_of Array
  end

  it "should return an array with a length of 15" do
    @board.board.length.must_equal 15
  end

  describe "letter in indexes" do
    before do
      @board.play_word(0,0,'down','cat')
    end

    it "index [0][0] should be c" do
      @board.board[0][0].must_equal "c"
    end

    it "index [1][0] should be a" do
      @board.board[1][0].must_equal "a"

    end

    it "index [2][0] should be t" do
      @board.board[2][0].must_equal "t"
    end

  end

  describe "overlapping words on board" do
    before do
      @board.play_word(0,0,'down','cat')
      @board.play_word(1,0,"right","apple")
    end

    it "index[1][1] should be p" do
      @board.board[1][1].must_equal "p"
    end

    it "should return can't play there if word overlaps" do
      @board.play_word(1,3,"down","dog").must_equal "can't play there"
    end

    it "index [1][3] should still be l" do
      @board.play_word(1,3,"down","dog")
      @board.board[1][3].must_equal "l"

    end
  end

end
