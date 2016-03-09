class Scoring
  LETTER_SCORES = {"a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1, "f"=>4, "g"=>2,
     "h"=>4, "i"=>1, "j"=>8, "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1, "p"=>3,
     "q"=>10, "r"=>1, "s"=>1, "t"=>1, "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
     "z"=>10}


  def self.score(word) # takes a string
    score = 0

    # modify score for corner cases
    if word.length == 7 # bonus
      score = 50
    elsif word.empty? # empty string/pass
      return 0
    end

    split_word = word.downcase.split('') # downcase for comparing
    split_word.each do |letter|
      score += LETTER_SCORES[letter]
    end

    return score
  end

  def self.highest_score_from(array_of_words)
    score_array = array_of_words.collect{ |word| self.score(word) }

    number_of_highest_scores = self.compare_things(score_array.sort.reverse)
    # sort gives ascending
    # reverse for descending to compare HIGHEST scores

    highest_scoring_words  = array_of_words.max_by(number_of_highest_scores) { |word| self.score(word) }

    return highest_scoring_words[0].to_s if highest_scoring_words.length == 1

    words_by_length = highest_scoring_words.min_by(number_of_highest_scores) { |word| word.length}
    #shortest first - sorting WORDS by length (to analyze ties)

    lengths_of_words = words_by_length.collect { |word| word.length }

    if lengths_of_words.last == 7
      if compare_things(lengths_of_words.reverse) > 1 # reverse to change ascending to descending because 7 is the longest we expect
         winning_word = self.match_tiebreaker_to_first_in_original_array(lengths_of_words.reverse, words_by_length, array_of_words)
         return winning_word
      end

      return words_by_length.last

    elsif self.compare_things(lengths_of_words) > 1 # we do want this in ascending order because normally smaller words win (based on rules)
      winning_word = self.match_tiebreaker_to_first_in_original_array(lengths_of_words, words_by_length, array_of_words)
      return winning_word
    else
      words_by_length.first
    end
  end

  def self.match_tiebreaker_to_first_in_original_array(array_of_equal_lengths, high_scores_array, original_array)
    number_ties_same_length = self.compare_things(array_of_equal_lengths)
    potential_winners = high_scores_array.first(number_ties_same_length)
    winning_word = original_array.find { |word| potential_winners.include? word }
  end

  def self.compare_things(compare_array)
    i = 1
    compare_array_x = compare_array.dup # prevents mutation of compare_array from shift
    while (compare_array_x[0] == compare_array_x[1]) && (compare_array_x.length > 1)
      compare_array_x.shift
      i +=1
    end
    return i
  end


end
