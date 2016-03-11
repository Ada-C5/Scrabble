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

    num.times do
      selected_tile_array = default_tiles.sample
      array_of_selected_words << selected_tile_array[0]
      @default_tiles.delete(selected_tile_array)
    end
    array_of_selected_words
  end

end
