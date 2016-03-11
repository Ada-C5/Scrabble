class TileBag

  def initialize
    @tilebag = [
      "A", "A", "A", "A", "A", "A", "A", "A", "A", "N", "N", "N", "N", "N", "N",
      "B", "B", "O", "O", "O", "O", "O", "O", "O", "O", "C", "C", "P", "P", "D",
      "D", "D", "D", "Q", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E",
      "E", "R", "R", "R", "R", "R", "R", "F", "F", "S", "S", "S", "S", "G", "G",
      "G", "T", "T", "T", "T", "T", "T", "H", "H", "U", "U", "U", "U", "I", "I",
      "I", "I", "I", "I", "I", "I", "I", "V", "V", "J", "W", "W", "K", "X", "L",
      "L", "L", "L", "Y", "Y", "M", "M", "Z"
    ]
  end

  def draw_tiles(number_of_tiles)
  	if number_of_tiles > 7
  		raise ArgumentError,"That's too many tiles! Stop CHEATING"
  	else 
	    @tilebag = @tilebag.shuffle
  	  tiles_drawn = @tilebag.shift(number_of_tiles)
  	end
  end

  def tiles_remaining
    @tilebag.length
  end
end