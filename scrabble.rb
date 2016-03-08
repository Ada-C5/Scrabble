require_relative './lib/scoring'

module Scrabble

# fill in this array of hashes as a lookup table
LETTER_POINT_VALUES = {1: ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"], 
												2: ["d", "g"], 
												3: ["b", "c", "m", "p"]
												4: ["f", "h", "v", "w", "y"]
												5: ["k"]
												8: ["j", "x"]
												10: ["q", "z"]}

end
