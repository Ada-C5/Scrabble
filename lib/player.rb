class Player
attr_accessor :name, :words_played
  def initialize (name)
    @name = name
    @words_played = []
    #@total_score =
  end


  def plays
    return @words_played
  end


  def play(word)
    if won? == true
      return false
    end
    @words_played << word
   return Scoring.score(word)
  end


  def total_score
    sum_of_scores = 0
    @words_played.each do |word|
      sum_of_scores = sum_of_scores + Scoring.score(word)
    end
    return sum_of_scores
  end


  def won?
    if total_score > 100
      return true
    else
      return false
    end
  end


  def highest_scoring_word

  end


  def highest_word_score

  end




end
