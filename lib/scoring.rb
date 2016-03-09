class Scoring
  #some sort of data structure to store the individual letter scores
  SCORE_CHART = {
    "A"=>1, "B"=>3, "C"=>3, "D"=>2,
    "E"=>1, "F"=>4, "G"=>2, "H"=>4,
    "I"=>1, "J"=>8, "K"=>5, "L"=>1,
    "M"=>3, "N"=>1, "O"=>1, "P"=>3,
    "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
    "U"=>1, "V"=>4, "W"=>4, "X"=>8,
    "Y"=>4, "Z"=>10
  }

  def self.score(word)
    word_array = word.upcase.split("")

    word_score = 0

    if word.length <= 7
      word_array.each do |letter|
        word_score += SCORE_CHART[letter]
    #returns score value for given word. word input as string.
      end
    #seven letter word get 50point bonus
      word.length == 7 ? word_score += 50 : word_score
    end
    return word_score
  end

  def self.highest_score_from(array_of_words)
    array_of_tied_words = []
    array_of_scores = []
    array_of_word_lengths =[]

    array_of_words.each do |word|
      x = self.score(word)
      array_of_scores.push(x)
    end

    highest_score = array_of_scores.max
    array_of_scores.each do |score|
      if score == highest_score
        array_of_tied_words << array_of_words[array_of_scores.index(score)]
      end
    end

    array_of_tied_words = array_of_tied_words.sort_by {|word| word.length}

    if array_of_tied_words.count > 2 &&
      return array_of_tied_words[0]

      array_of_tied_words.each do |tied_word|
        if array_of_tied_words.length == 7
          return tied_word
        end


      return array_of_tied_words[0]

     else array_of_tied_words[1].length

      array_of_tied_words[1]

    #return array_of_words[array_of_scores.index(highest_score)]

  end
end
