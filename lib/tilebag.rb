class Scrabble::TileBag
  attr_reader :tilebag
  def initialize
    array_letters = ("A".."Z").to_a
    array_numbers = [9, 2, 2, 4, 12, 2, 3, 2, 9, 1, 1, 4, 2, 6, 8, 2, 1, 6, 4,
      6, 4, 2, 2, 1, 2, 1]
    @tilebag = array_letters.zip(array_numbers)
  end

  def draw_tiles(num)
    letter = []
    num.times do |tile|
      index = rand(0..tilebag.length-1)
      # shovels letters into array
      letter << tilebag[index][0]
      # removes 1 from letter count if tile is drawn
      @tilebag[index][1] = tilebag[index][1] - 1

      if tilebag[index][1] == 0
        @tilebag.delete(tilebag[index])
      end
    end
      return letter
      #

  end

  def tiles_remaining
    tiles = 0
    tilebag.each do |letter, number|
      tiles = tiles + number
    end
    return tiles
  end

end
