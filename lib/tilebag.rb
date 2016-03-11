require_relative '../scrabble'

class Scrabble::Tilebag
  attr_reader :tiles, :total_tiles_drawn

	def initialize
		@tiles = Scrabble::DEFAULT_TILES.shuffle
	end

	def draw_tiles(num)
		tiles_drawn = []
		until tiles_drawn.length == num
			tiles_drawn << tiles.pop
		end
    return tiles_drawn
	end

	def tiles_remaining
		tiles.length
	end

end
