#require_relative '../scrabble'  #   allows this class to access scrabble and run through irb

class Scrabble::Player
  include Scrabble
  attr_reader :name

  def initialize(player_info)
    @name = player_info[:name]
    @words_played_array = []
  end

  def plays
    @words_played_array
  end

  def play(word)
    @words_played_array << word
  end
end
