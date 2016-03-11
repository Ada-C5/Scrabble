class Tilebag
  attr_reader :tilebag

  def initialize
    @tilebag = {}
  end

  @tilebag = {
    "a"=>9, "b"=>2, "c"=>2, "d"=>4, "e"=>12, "f"=>2, "g"=>3, "h"=>2, "i"=>9,
    "j"=>1, "k"=>1, "l"=>4, "m"=>2, "n"=>6, "o"=>8, "p"=>2, "q"=>1, "r"=>6,
    "s"=>4, "t"=>6, "u"=>4, "v"=>2, "w"=>2, "x"=>1, "y"=>2, "z"=>1}

  def self.draw_tiles(num)
    keys = []
    letters = []
    keys = (@tilebag.keys).shuffle
    puts keys
    count = 0
      until count == num do
        letter = keys[count]
          if @tilebag[letter] >= 1
            @tilebag[letter] = @tilebag[letter] - 1
            letters << letter
            count = count + 1
          end
      end
    return letters

  end

  def self.tiles_remaining
    remaining = 0
  	@tilebag.each do |letter, number|
  		remaining += number
  	end
  	return remaining
  end
end
