require_relative '../scrabble'

class Scrabble::Player
attr_reader :name, :plays, :score

def initialize(name)
  @name = name
end

end
