class Scrabble::TileBag

  attr_reader :tilebag

  def initialize
  @tilebag = [
    "A", "A", "A", "A", "A", "A", "A", "A", "A", "N", "N", "N", "N", "N", "N",
    "B", "B", "O", "O", "O", "O", "O", "O", "O", "O", "C", "C", "P", "P", "D",
    "D", "D", "D", "Q", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E",
    "E", "R", "R", "R", "R", "R", "R", "F", "F", "S", "S", "S", "S", "G", "G",
    "G", "T", "T", "T", "T", "T", "T", "H", "H", "U", "U", "U", "U", "I", "I",
    "I", "I", "I", "I", "I", "I", "I", "V", "V", "J", "W", "W", "K", "X", "L",
    "L", "L", "L", "Y", "Y", "M", "M", "Z"
  ]
  end

  def draw_tiles(num)
    @tilebag = @tilebag.shuffle
    tiles_drawn = @tilebag.shift(num)
  end

  def tiles_remaining
    @tilebag.length
  end

end

#
# # We used this to generate tilebag array :o)
# #
# h = {
#   "A" => 9,
#   "N" => 6,
#   "B" => 2,
#   "O" => 8,
#   "C" => 2,
#   "P" => 2,
#   "D" => 4,
#   "Q" => 1,
#   "E" => 12,
#   "R" => 6,
#   "F" => 2,
#   "S" => 4,
#   "G" => 3,
#   "T" => 6,
#   "H" => 2,
#   "U" => 4,
#   "I" => 9,
#   "V" => 2,
#   "J" => 1,
#   "W" => 2,
#   "K" => 1,
#   "X" => 1,
#   "L" => 4,
#   "Y" => 2,
#   "M" => 2,
#   "Z" => 1
# }
#
# a = []
#
# h.each do |letter, count|
#   count.times do
#     a << letter
#   end
# end
#
# p a
