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
      #Build new array to consider all available letters to sample from

      #Raise an error if num is larger than 7
      array = []
      @tiles_in_bag.each do |key, value|
        array << (key * value).split("")
        array.flatten!
      end

      # If number of tiles requested is larger than number of tiles in bag
      # num should equal tiles left.




      tiles_to_draw = array.sample(num)

      tiles_to_draw.each do |letter|
        @tiles_in_bag[letter] = @tiles_in_bag[letter] - 1
      end

      @tiles_in_bag.delete_if {|key, value| value < 1 }

      return tiles_to_draw

    end



end
