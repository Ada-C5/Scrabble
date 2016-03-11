require 'pp'
module Scrabble
class Board
  attr_accessor :board
  def initialize()
    @board = create_board
  end

  def create_board
    fill = "_ " * 7
    fill = fill.split
    board = []
    7.times do
      duplicate = fill.dup
      board << duplicate
    end
    return board
  end

  #Call check placement first, if return true call place tiles
  def place_tiles(word, direction, row, column)
    characters = word.chars
    i = 0
    if direction.downcase == "across"
      characters.each do |letter|
        @board[row][column+i] = letter
        i += 1
      end
    else
      characters.each do |letter|
        @board[row+i][column] = letter
        i += 1
      end
    end
    return @board
  end

  def check_placement(word, direction, row, column) # [row, row]
    characters = word.chars
    i = 0
    if direction.downcase == "across"
      characters.each do |letter|
        if (@board[row][column+ i] == "_") || (@board[row][column + i] == letter)
          i += 1
        else
          puts "Invalid placement"
          return false
        end
      end
    else
      characters.each do |letter|
        if (@board[row+i][column] == "_") || (@board[row+i][column] == letter)
          i += 1
        else
          puts "Invalid placement"
          return false
        end
      end
    end
    pp @board
    return true
  end
end

end
