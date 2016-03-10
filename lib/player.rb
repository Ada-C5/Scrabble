#require_relative '../scrabble'  #   allows this class to access scrabble and run through irb

class Scrabble::Player
  include Scrabble
  attr_reader :name
  
  def initialize(player_info)
    @name = player_info[:name]
  end
end
