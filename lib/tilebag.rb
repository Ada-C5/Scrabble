class TileBag
  TILE_HASH = {
    "A" => 9,
    "B" => 2,
    "C" => 2,
    "D" => 4,
    "E" => 12,
    "F" => 2,
    "G" => 2,
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
    "Z" => 1

  }

  def fill_tile_bag
    tile_array = []

    TILE_HASH.each do |letter, number|
      a = letter * number
      a = a.split(//)
      tile_array.push *a
    end
    tile_array
  end


  def initialize
    @tile_bag = fill_tile_bag
  end

  def draw_tiles(num)
    @tile_bag.shuffle.shift(num)
  end

  def tiles_remaining
    @tile_bag.length
  end

end
