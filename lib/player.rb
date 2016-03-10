require_relative '../lib/scoring'

class Player
  def initialize(name)
    @name = name
    @words_played = []
    @scores_array = []
    return @name
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
  	# This can also come from some logic regarding highest word score
  	# Grab that array of values and enuerable it together with .inject
  	# or .reduce which are the same thing 

  end

  def won?  #returns true if over 100pts, otherwise false(haven't won yet)
    if Player.total_score >= 100
      "You win!"
    else
      "You haven't won yet."
    end
  end

  def highest_scoring_word #returns highest scored word from words_played array
  	Scoring.highest_score_from(words_played)
  end

  def highest_word_score #returns the highest score 

  	# we have an array of scores over in Scoring.rb.
  	# 1) either copy that logic here
  	# 2) or find some way to make that data available to Player.rb
  	# I think option one is easier but I could be wrong because
  	# I am le tired right now and better at writing comments
  	# than writing code. 

  end

end
