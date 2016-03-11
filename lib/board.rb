class Board
  attr_reader :board

  def initialize
    @board = make_board
  end

  def make_board
    a = []
    15.times do # fills array with 15 new arrays
      a << Array.new(15) # each array has 15 elements, creating a 15 x 15 grid
    end

    return a
  end

  def can_be_played(row, col, direction, word)
    can_play = true
    letter_array = word.split(//)

    letter_array.each do |letter|
      # if there's something in the specific index on the board that does not match the current letter
      if @board[row][col] != nil && @board[row][col] != letter
        can_play = false
      end

      # increment either the row or column (depending on which direction specified by player)
      row, col = increment_row_or_col(row, col, direction)
    end

    can_play
  end

  def play_word(row, col, direction, word)
    # do not play the word if a conflicting word is already on the board
    return "can't play there" if can_be_played(row, col, direction, word) == false

    letter_array = word.split(//)

    i = 0
    while i < letter_array.length
      @board[row][col] = letter_array[i]
      i += 1

      row, col = increment_row_or_col(row, col, direction)
    end
  end

  def increment_row_or_col(row, col, direction)
    if direction.downcase.include? 'right'
      col += 1
    else
      row += 1
    end

    return [row, col]
  end



end