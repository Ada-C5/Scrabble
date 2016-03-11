class Tilebag
  attr_accessor :tiles_in_bag
    def initialize
      @tiles_in_bag = {"A" => 9,	"N" => 6,
                       "B" => 2,	"O" => 8,
                       "C" => 2,	"P" => 2,
                       "D" => 4,	"Q" => 1,
                       "E" => 12,	"R" => 6,
                       "F" => 2,	"S" => 4,
                       "G" => 3,	"T" => 6,
                       "H" => 2,	"U" => 4,
                       "I" => 9,	"V" => 2,
                       "J" => 1,	"W" => 2,
                       "K" => 1,	"X" => 1,
                       "L" => 4,	"Y" => 2,
                       "M" => 2,	"Z" => 1}
    end


    def draw_tiles(num)

      tiles_to_draw = tiles_in_bag.keys.sample(num)

      tiles_to_draw.each do |letter|
        tiles_in_bag[letter] = tiles_in_bag[letter] - 1
      end

      return tiles_to_draw

    end



end
