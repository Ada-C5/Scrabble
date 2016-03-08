# require_relative '../scrabble'  #   allows this class to access scrabble and run through irb

class Scrabble::Scoring
  include Scrabble
  LETTER_POINTS = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
  }

  def self.score(word)
    score = 0

    word_array = word.upcase.split("")

    word_array.each do |letter|
      LETTER_POINTS.each do |points, letters_array|
        if letters_array.include? letter
          score += points
        end
      end
    end

    score
  end
end
