class TileBag

  attr_accessor :default_tiles

  def initialize
    @default_tiles = ["a", "a", "a", "a", "a", "a", "a", "a",
       "a", "n", "n", "n", "n", "n", "n", "b", "b", "o", "o", "o", "o", "o",
       "o", "o", "o", "c", "c", "p", "p", "d", "d", "d", "d", "q", "e", "e",
       "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "r", "r", "r", "r",
       "r", "r", "f", "f", "s", "s", "s", "s", "g", "g", "g", "t", "t", "t",
       "t", "t", "t", "h", "h", "u", "u", "u", "u", "i", "i", "i", "i", "i",
       "i", "i", "i", "i", "v", "v", "j", "w", "w", "k", "x", "l", "l", "l",
       "l", "y", "y", "m", "m", "z"]

  end

  def draw_tiles(num)
    # num number of random tiles
    random_tiles = default_tiles.sample(num)


    # remove these tiles from the default set
    random_tiles.each do |tile|
      default_tiles.delete_at(default_tiles.find_index(tile))
      # delete_at mutates array like slice
    end

    return random_tiles

  end

end
