class Player
  attr_reader :name, :word
  def initialize(name)
  @name = name
  @words = []
  end


  def plays
    @words
  end

  def play(word)
    @words << word
  end
end
