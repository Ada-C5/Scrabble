require_relative '../lib/scoring'

class Player
  def initialize(name)
    @name = name
    @words_played = []
    @scores_array = []
  end

  def name_return
    @name
  end

  def plays   #returns an array of all the words played by Player
    return words_played
  end

  def play(word)  #adds word to the words_played array
    @words_played << word
    @scores_array << Scoring.score(word)
    # won?
  end

  def total_score #returns sum of scores of played words


  end

  def won?  #returns true if over 100pts, otherwise false(haven't won yet)
    if Player.total_score >= 100
      "You win!"
    else
      "You haven't won yet."
    end
  end

  def highest_scoring_word #returns highest scoring word from words_played array
  end

  def highest_word_score #returns score of highest scoring word
  end

end
