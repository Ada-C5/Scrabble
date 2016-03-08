require_relative '.lib/scoring'
require_relative '.lib/player'

module Scrabble
  include Scoring

  include Player
end
