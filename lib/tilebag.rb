require_relative '../scrabble'

class Scrabble::Tilebag
  attr_reader :tiles
  
	def initialize
		@tiles = Scrabble::DEFAULT_TILES.shuffle
	end

	def draw_tiles(num)
		tiles_drawn = []
		tiles_drawn << tiles.pop until tiles_drawn.length == num
    return tiles_drawn
	end

	def tiles_remaining
		tiles.length
	end

end
