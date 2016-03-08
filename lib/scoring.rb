# require_relative '../scrabble'
class Scrabble::Scoring
  # letters and corresponding values for scoring the words
  LETTERS = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
  }

  def self.test
    return "MEOW"
  end

  def self.score(word)
    score = 0
    word.each_char do |letter| 
      LETTERS.each do |k, v|
        if v.include?(letter)
          score += k
        end
      end
    end
    return score
  end

  # def self.highest_score_from(array_of_words)
  # end

end
