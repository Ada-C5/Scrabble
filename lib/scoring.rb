require '../scrabble'

class Scoring
  include Scrabble
  def initialize(file)
    @scrabble_file = import(file)
  end
end
