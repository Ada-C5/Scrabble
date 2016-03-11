#name: returns the value of the @name instance variable
#play(word): Adds the input word to the plays Array
  # Returns false if player has already won
  # Returns the score of the word
#plays: returns an Array of the words played by the player
#total_score: Returns the sum of scores of played words
#won?: If the player has over 100 points, returns true, otherwise returns false
#highest_scoring_word: Returns the highest scoring played word
#highest_word_score: Returns the highest_scoring_word score

class Scrabble::Player
  attr_reader :name, :words_played

  def initialize(name)
    @name = name
    @words_played = []
  end

  def won?
    total_score >= 100
  end

  def play(word)
    # adds word to array of words
    @words_played << word
    p @words_played
    # Returns false if player has already won
    word_score = Scrabble::Scoring.score(word)
    won? ? false : word_score
      # scores word & returns score
  end

  def total_score
    Scrabble::Scoring.word_scores(words_played).reduce(:+)
  end

  def highest_scoring_word
    p words_played
    Scrabble::Scoring.highest_score_from(words_played, Scrabble::RWORD)
  end

  def highest_word_score
    p words_played
    Scrabble::Scoring.highest_score_from(words_played, Scrabble::RPOINTS)
  end

end
