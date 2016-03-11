# require_relative './lib/scoring'

module Scrabble

# fill in this array of hashes as a lookup table
LETTER_POINT_VALUES = { 1 => ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"],
												2 => ["d", "g"],
												3 => ["b", "c", "m", "p"],
												4 => ["f", "h", "v", "w", "y"],
												5 => ["k"],
												8 => ["j", "x"],
												10 => ["q", "z"]}

DEFAULT_TILES = ["A", "A", "A", "A", "A", "A", "A", "A", "A",
	"B", "B",
	"C", "C",
	"D", "D", "D", "D",
	"E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E",
	"F", "F",
	"G", "G", "G",
	"H", "H",
	"I", "I", "I", "I", "I", "I", "I", "I", "I",
	"J",
	"K",
	"L", "L", "L", "L",
	"M", "M",
	"N", "N", "N", "N", "N", "N",
	"O", "O", "O", "O", "O", "O", "O", "O",
	"P", "P",
	"Q",
	"R", "R", "R", "R", "R", "R",
	"S", "S", "S", "S",
	"T", "T", "T", "T", "T", "T",
	"U", "U", "U", "U",
	"V", "V",
	"W", "W",
	"X",
	"Y","Y",
	"Z"]

end
