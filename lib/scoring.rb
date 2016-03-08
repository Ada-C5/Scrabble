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
    word.upcase!
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

  def self.highest_score_from(array_of_words)
    score_array = []
    word_array = []

    array_of_words.each do |word|
      temp_score = Scrabble::Scoring.score(word)
      score_array << temp_score
      word_array << word
    end

    total_array = score_array.zip(word_array)
    sorted_array = total_array.sort_by{|score| score[0]}
    highest_score = sorted_array[-1][0]

    tie_array = sorted_array.delete_if{|array| array[0] != highest_score}
    if tie_array.length == 1
      return tie_array[0][1]
    else
      tie_array.each do |array|
        len = array[1].length
        array[0] = len 
      end
    end

    sorted_tie_array = tie_array.sort_by { |array| array[0] }
    shortest_word = sorted_tie_array[0][0]
    shortest_word_array = sorted_tie_array.delete_if{|array| array[0] != shortest_word }

    if shortest_word_array.length == 1
      return shortest_word_array[0][1]
      # else there are multiple words with the same length
    else 
      array_of_words.each do |word|
        shortest_word_array.each do |array|
          if word == array[1]
            return array[1]
          end
        end
      end
    end



    # temp_array = [0, "word"]
    # loop_score = 0
    # temp_score = 0
    # array_of_words.each do |word|
    #   temp_score = Scrabble::Scoring.score(word)
    #
      # if temp_score > loop_score
      #   loop_score = temp_array[0]
      #   temp_array = [loop_score, word]
      # end
    # end
    # return temp_array[1]
  end

end
