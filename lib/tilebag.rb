# require_relative '../scrabble'
class Scrabble::Tilebag
TILES = {
  'A' => 9,
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
  "Y" => 1,
  "Z" => 1
}
attr_accessor :default_tiles
  def initialize
    @default_tiles = TILES
  end

  def draw_tiles(num)
    our_tiles = @default_tiles.keys.sample(num)
      tile_removal(our_tiles)
      return our_tiles
  end

  def tiles_remaining
    @default_tiles.values.inject(0, :+)
  end

  def tile_removal(array_of_tiles)
    array_of_tiles.each do |letter|
    if @default_tiles.keys.include?(letter)
      @default_tiles[letter] -= 1
    end
    end
  end

end
