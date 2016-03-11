module Scrabble
  include Scoring

  include Player

  include TileBag
  
end

require_relative './lib/scoring'
require_relative './lib/player'
