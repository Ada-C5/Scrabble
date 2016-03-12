
# using this module as a namespace, not a mixin
module Scrabble


end

# putting this at the end because otherwise it will read scoring.rb before it creates
# the Scrabble module, meaning the code in scoring.rb won't work
require_relative './lib/scoring'
require_relative './lib/player'
require_relative './lib/tilebag'
