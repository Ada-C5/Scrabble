require_relative '../scrabble.rb'

class Scrabble::Scoring

  SCORE_CHART = {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V W Y],
    5 => ["K"],
    8 => %w[J X],
    10 => %w[Q Z]
  }

  def self.score(word)
      puts score
  end

  def word_letters(word)
     word.split(//)
  end

  def finding_values(word)

      # see what the letter's key is and return all keys in a new array
      word_letters.map { |letter| letter == SCORE_CHART[] }

  end

  def search_score_chart(word)
    SCORE_CHART.select{ |value, letters| letters.include?(word) }
  end


end
