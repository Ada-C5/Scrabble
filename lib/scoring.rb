class Scoring
  LETTER_SCORES = {"a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1, "f"=>4, "g"=>2,
     "h"=>4, "i"=>1, "j"=>8, "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1, "p"=>3,
     "q"=>10, "r"=>1, "s"=>1, "t"=>1, "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
     "z"=>10}


  def self.score(word) #takes a string
    score = 0
    if word.length == 7 #bonus for 7 letter word
      score = 50
    end
    split_word = word.split('')
    split_word.each do |letter|
      score = score + LETTER_SCORES[letter]
    end
    return score
  end

  def self.highest_score_from(array_of_words)
    score_array = array_of_words.collect{ |word| self.score(word) }
    knockout_array = score_array.sort
    i = self.compare_things(knockout_array.reverse) #sort gives ascending, reverse for descending
    highest_scoring_words  = array_of_words.max_by(i) { |word| self.score(word) }
    if highest_scoring_words.length == 1
      return highest_scoring_words[0].to_s
    end
    words_by_length = highest_scoring_words.min_by(highest_scoring_words.length) { |word| word.length} #shortest first

    if words_by_length.last.length == 7 # come back for multiple 7s
      return words_by_length.last
    elsif self.compare_words_by_length(words_by_length)> 1
      number_ties_same_length = self.compare_words_by_length(words_by_length)
      # return number_ties_same_length # TESTING RETURN
      potential_winners = words_by_length.first(number_ties_same_length)
      winning_word = array_of_words.find {|word| potential_winners.include? word}
      return winning_word
    else
      words_by_length.first
    end
  end

  def self.compare_words_by_length(words)
    i = 1
    words_x = words.dup
    while words_x.length > 1 && (words_x[0].length == words_x[1].length)
      words_x.shift
      i +=1
    end
    return i
  end

  def self.compare_things(score_array)
    i = 1
    while score_array[0] == score_array[1]
      score_array.shift
      i +=1
    end
    return i
  end


end



#   letter_hash = {}
# letter_array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
#
# letter_array.each do |letter|
#   case
#   when LETTER_SCORES[0][0].include?(letter.upcase)
#     letter_hash[letter] = 1
#   when LETTER_SCORES[1][0].include?(letter.upcase)
#     letter_hash[letter] = 2
#   when LETTER_SCORES[2][0].include?(letter.upcase)
#     letter_hash[letter] = 3
#   when LETTER_SCORES[3][0].include?(letter.upcase)
#     letter_hash[letter] = 4
#   when LETTER_SCORES[4][0].include?(letter.upcase)
#     letter_hash[letter] = 5
#   when LETTER_SCORES[5][0].include?(letter.upcase)
#     letter_hash[letter] = 8
#   when LETTER_SCORES[6][0].include?(letter.upcase)
#     letter_hash[letter] = 10
#   end
# end
#
#   end
# end
