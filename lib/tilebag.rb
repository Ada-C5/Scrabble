# require_relative './scrabble.rb'

class Scrabble::TileBag

  include Scrabble

  attr_reader :default_tiles

  def initialize
    @default_tiles = [["A", 1], ["A", 1], ["A", 1], ["A", 1], ["A", 1], ["A", 1], ["A", 1], ["A", 1], ["A", 1],
                      ["B", 1], ["B", 1],
                      ["C", 1], ["C", 1],
                      ["D", 1], ["D", 1], ["D", 1], ["D", 1],
                      ["E", 1], ["E", 1], ["E", 1], ["E", 1], ["E", 1], ["E", 1], ["E", 1],
                      ["E", 1], ["E", 1], ["E", 1], ["E", 1], ["E", 1],
                      ["F", 1], ["F", 1],
                      ["G", 1], ["G", 1],["G", 1],
                      ["H", 1], ["H", 1],
                      ["I", 1], ["I", 1], ["I", 1], ["I", 1], ["I", 1], ["I", 1], ["I", 1], ["I", 1], ["I", 1],
                      ["J", 1],
                      ["K", 1],
                      ["L", 1], ["L", 1], ["L", 1], ["L", 1],
                      ["M", 1], ["M", 1],
                      ["N", 1], ["N", 1], ["N", 1], ["N", 1], ["N", 1], ["N", 1],
                      ["O", 1], ["O", 1], ["O", 1], ["O", 1], ["O", 1], ["O", 1], ["O", 1], ["O", 1],
                      ["P", 1], ["P", 1],
                      ["Q", 1],
                      ["R", 1], ["R", 1], ["R", 1], ["R", 1], ["R", 1], ["R", 1],
                      ["S", 1], ["S", 1], ["S", 1], ["S", 1],
                      ["T", 1], ["T", 1], ["T", 1], ["T", 1], ["T", 1], ["T", 1],
                      ["U", 1], ["U", 1], ["U", 1], ["U", 1],
                      ["V", 1], ["V", 1],
                      ["W", 1], ["W", 1],
                      ["X", 1],
                      ["Y", 1], ["Y", 1],
                      ["Z", 1]]
  end

  def draw_tiles(num)

    array_of_selected_words =[]

    # picks a random number that will be used as the index value for selecting a tile,
    # and then it adds the tile that has that index to array_of_selected_words, then
    # it will delete the tile at that index
    num.times do
      selected_tile_index = rand(0..default_tiles.length)
      array_of_selected_words << @default_tiles[selected_tile_index]
      @default_tiles.delete_at(selected_tile_index)
    end
    array_of_selected_words
  end

  def tiles_remaining
    default_tiles.length
  end

end
