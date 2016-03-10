class Player
attr_accessor :name, :words_played
  def initialize (name)
    @name = name
    @words_played = []
    #@total_score =
  end


  def plays(name)
    return @words_played 
  end


  def play(word)
    @words_played << word
      #if won == true
        #return false
      #end
   return Scoring.score(word)
  end


  def total_score

  end


  def won?

  end


  def highest_scoring_word

  end


  def highest_word_score

  end




end
