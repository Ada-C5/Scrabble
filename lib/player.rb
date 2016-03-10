#require_relative '../scrabble'  #   allows this class to access scrabble and run through irb

class Scrabble::Player
  include Scrabble
  attr_reader :name, :words_played_array

  def initialize(player_info)
    @name = player_info[:name]
    @words_played_array = []
  end

  def plays
    @words_played_array
  end

  def play(word)
    @words_played_array << word
    score = Scrabble::Scoring.score(word)
    won? == true ? false : score
    #return false if the player has already won

  end

  #total_score: Returns the sum of scores of played words
  # (pass score values to total_score method)
  # test score is being stored (for test purposes, pass a value at the end)

  def total_score
    total_score_array = []

    words_played_array.each do |word|
      total_score_array << Scrabble::Scoring.score(word)
    end

    total_score = total_score_array.reduce(:+)

  end

  def won?
    total_score >= 100 ? true : false
  end
end
