class TileBag

  def initialize
    @tile_bag = %w[a b c d e f]
  end

  def draw_tiles(num)
    @tile_bag.shift(num)
    num
  end

  def tiles_remaining
    @tile_bag.length
  end

end