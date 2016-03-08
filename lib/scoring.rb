class Scoring
  LETTER_SCORES = {
    1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2 => ['D', 'G'],
    3 => ['B', 'C', 'M', 'P'],
    4 => ['F', 'H', 'V', 'W', 'Y'],
    5 => ['K'],
    8 => ['J', 'X'],
    10 => ['Q', 'Z']
  }

  def self.score(word)
    word_score = 0
    word = word.upcase
    letter_array = word.split(//)

    letter_array.each do |letter|
      LETTER_SCORES.each do |key, value|
        if value.include? letter
           word_score += key
        end
      end
    end
      if letter_array.length == 7
        word_score += 50
      end

    word_score
  end

  def self.highest_score_from(array_of_words)
    word_hash = {}
    array_of_words.each do |word|
      word_hash[word] = score(word)
    end

    word_list = []
    max_value = word_hash.max_by do |key, value| value
    end

    word_hash.each do |key, value|
      if value == max_value[1]
        word_list << key
      end
    end

    word_list.find {|word| word.length == 7
      return word
    }

    word_list.min_by {|words| words.length}
  end

end
