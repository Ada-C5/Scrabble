class TileBag

  STARTING_TILE_SET = {
    "A" => 9,
    "B" => 2,
    "C" => 2,
    "D" => 4,
    "E" => 12,
    "F" => 2,
    "G" => 3,
    "H" => 2,
    "I" => 9,
    "J" => 1,
    "K" => 1,
    "L" => 4,
    "M" => 2,
    "N" => 6,
    "O" => 8,
    "P" => 2,
    "Q" => 1,
    "R" => 6,
    "S" => 4,
    "T" => 6,
    "U" => 4,
    "V" => 2,
    "W" => 2,
    "X" => 1,
    "Y" => 2,
    "Z" => 1,
  }

	def initialize
		# sets up instaces with collections of default tiles
		@tiles_in_bag = STARTING_TILE_SET # is this valid?
	end

	def self.draw_tiles(number_of_tiles)
		# returns num number of random tiles, removes the tiles from the default set.
    number_of_tiles.times do
      return STARTING_TILE_SET.sample
    end
		# @starting_tiles - number_of_tiles
		# returns drawn tiles and subtracts from starting tile pool. Maybe use .sample?
	end

	def self.tiles_remaining
		# returns the number of tiles remaining in the bag
		# every time tiles are drawn, this needs to update
	end
end
