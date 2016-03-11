class Board
  attr_reader :board

  def initialize
    @board = make_board
  end

  def make_board
    a = []
    15.times do
      a << Array.new(15)      
    end

    return a
  end

  def can_be_played(row, col, direction, word)
    can_play = true
    letter_array = word.split(//)

    letter_array.each do |letter|
      if @board[row][col] != nil && @board[row][col] != letter
        can_play = false
      end

      row, col = increment_row_or_col(row, col, direction)
    end

    can_play
  end

  def play_word(row, col, direction, word)
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