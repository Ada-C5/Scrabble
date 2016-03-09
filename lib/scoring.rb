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
    tiles = 0

    word_array = word.upcase.split("")

    word_array.each do |letter|
      LETTER_POINTS.each do |points, letters_array|
        if letters_array.include? letter
          score += points
          tiles += 1
        end
      end
    end
    # if all seven tiles are used the below tenary will add 50 points to the users score else return score
    tiles == 7 ? score += 50 : score
    score
  end

  def self.highest_score_from(array_of_words) # array_of_words = ["cats", "fee", "no"]
    array_of_word_values = []
    array_of_words.each do |word|
      array_of_word_values << [word, self.score(word), word.length] #  = [["cats", 7, 4], ["fee", 7, 3], ["no", 2, 2]]
    end

    highest_score_array = array_of_word_values[0] # ["cats", 7, 4]

    array_of_word_values.each do |word_array| # ["cats", 7, 4]
      if word_array[1] == highest_score_array[1]  # compare score
        if word_array[2] < highest_score_array[2]
          highest_score_array[2] == 7 ? highest_score_array : highest_score_array = word_array
          #highest_score_array = word_array # replace the highest score to the word_array being referenced
        elsif word_array[2] > highest_score_array[2]
          word_array[2] == 7 ? highest_score_array = word_array : highest_score_array
        end
      elsif word_array[1] > highest_score_array[1]
        highest_score_array = word_array
      end
    end
    return highest_score_array[0]
  end
end
