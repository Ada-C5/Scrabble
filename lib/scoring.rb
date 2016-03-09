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

  # returns score (single word)
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
    # special bonus if you use 7 tiles
    if word.length == 7
      score += 50
    end
    # return score as int
    return score
  end

  # method that sorts array or arrays by array[0], finds ties and returns array with only ties
  def self.sort_drop(array_of_arrays, index)
    sorted_array = array_of_arrays.sort_by { |array| array[0] }
    min_max = sorted_array[index][0]
    sorted_array.delete_if{|array| array[0] != min_max }
    return sorted_array
  end
  # returns highest scored word as ([array])
  def self.highest_score_from(array_of_words)
    score_array = []
    word_array = []

    # creates separate score and word arrays based on array input
    array_of_words.each do |word|
      temp_score = Scrabble::Scoring.score(word)
      score_array << temp_score
      word_array << word
    end

    # combines the score and word array AND sorts
    total_array = score_array.zip(word_array) # => [[score,word]]
    # call method to sort and return only score ties
    sorted_array = self.sort_drop(total_array, -1)

    # if there's one word left
    if sorted_array.length == 1
      return sorted_array[0][1] # this is the answer
    # if there's a tie, reassign score to equal length of word => [[length,word]]
    else
      sorted_array.each do |array|
        len = array[1].length
        array[0] = len
      end
    end

    # call method to sort and return only length ties
    sorted_tie_array = self.sort_drop(sorted_array, 0)

    # if there's one word left, it's obvs the answer
    if sorted_tie_array.length == 1
      return sorted_tie_array[0][1]

    # else there are multiple words with the same length
    # select the one that came first (based on user input)
    else
      array_of_words.each do |word|
        sorted_tie_array.each do |array|
          if word == array[1]
            return array[1]
          end
        end
      end
    end
  end
end
