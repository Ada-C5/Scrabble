class Scrabble::TileBag
  def initialize
    @tiles = { A: 9,	N: 6, B: 2,	O: 8, C: 2,	P: 2, D: 4,	Q: 1,
    E: 12,R: 6, F: 2,	S: 4, G: 3,	T: 6,H: 2,	U: 4, I: 9,
    V: 2, J: 1,	W: 2, K: 1,	X: 1, L: 4,	Y: 2, M: 2,	Z: 1
  }
  #@tiles[:A]-1

  end

  def draw_tiles(num)
    sample = @tiles.keys.sample(num)
    # =>[:J, :B, :F, :L, :Y, :I, :C]

    @tiles.each do |letter, quantity|
    if sample.include? letter
      quantity -= 1
      tiles[letter] = quantity
    end
    #  tiles
  end
end
