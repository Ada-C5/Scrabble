module Scrabble
  include Scoring

  include Player

  include TileBag
  
  include Board
end

require_relative './lib/scoring'
require_relative './lib/player'
require_relative './lib/tilebag'
require_relative './lib/board'