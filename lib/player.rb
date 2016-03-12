class Player
attr_accessor :name, :words_played, :tiles
  def initialize (name)
    @name = name
    @words_played = []
    @tiles = []
  end


  def plays
    return @words_played
  end

  # def have_letters?    #WE WERE GOING TO DO THIS BUT DIDNT FINISH YET: NOT IN REQUIREMENTS ^_^

    # word_letters = @word_played.split("")
    # temp_tiles = @tiles

    # word_letters.each do |letter|     #this checks to be sure we have the letters that are in the word we are trying to play
      # if temp_tiles.include?(letter)
        # temp_tiles.delete_at(tiles.index(letter) || tiles.length)
      # else
        # return false
      # end
    # end
    # @tiles = temp_tiles
    # return true
  # end



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
    winner_word = Scoring.highest_score_from(@words_played)
    return winner_word
  end


  def highest_word_score
    winner_score = Scoring.score(Scoring.highest_score_from(@words_played))
    return winner_score
  end


  def draw_tiles(tile_bag)
    x = 7 - @tiles.length
    @tiles.concat(tile_bag.draw_tiles(x))
  end


end
