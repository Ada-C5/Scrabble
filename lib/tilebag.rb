# require_relative '../scrabble'
class Scrabble::Tilebag
  attr_accessor :default_tiles

  def initialize
    @default_tiles = new_bag
  end

  def new_bag
    {
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
  end


#returns an array of all actual tiles, to allow user to pick more than one of the same letter tile
#we incorporated this into our draw_tiles method because .sample was not letting that happen
  def display_all_tiles
    array = []
    @default_tiles.each do |key, value|
      array << (key * value).split("")
    end
    return array.flatten
  end

#check to see if the numbers of tiles player is trying to draw are available,
# then removes them from tile bag and returns new tiles
# ex - if player tries to draw 6 and there are only 4, it gives them those 4 tiles
  def draw_tiles(num)
    if num <= tiles_remaining
      our_tiles = display_all_tiles.sample(num)
      tile_removal(our_tiles)
      return our_tiles
    else
      print "Sorry, there are only #{tiles_remaining} left."
      our_tiles = display_all_tiles.sample(tiles_remaining)
      tile_removal(our_tiles)
      return our_tiles
    end
  end

 #added up number of tiles using INJECT!
  def tiles_remaining
    @default_tiles.values.inject(0, :+)
  end

#deletes tiles from tile_bag, when there are no tiles left, it remove that key/value pair from bag
  def tile_removal(array_of_tiles)
    array_of_tiles.each do |letter|
    if @default_tiles.keys.include?(letter)
      @default_tiles[letter] -= 1
    end
    @default_tiles.delete_if {|key, value| value == 0 }
  end
  end

end
