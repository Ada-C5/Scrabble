class Scoring
  LETTER_SCORES =
  {"a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1, "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8, "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1, "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1, "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4, "z"=>10}

  def self.score(word)
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
    score_array = array_of_words.collect{|word| word.score}
    knockout_array = score_array.sort
    compare_things(knockout_array)
    highest_scoring_words  = array_of_words.max_by(i) { |word| word.score}
    if highest_scoring_words.length == 1
      return highest_scoring_words[0].to_s
    end
    words_by_length = highest_scoring_words.min_by(highest_scoring_words.length) { |word| word.length} #shortest first

    if words_by_length.last == 7 # come back for multiple 7s
      return words_by_length.last
    elsif compare_things(words_by_length)> 1
      number_ties_same_length = compare_things(words_by_length)
      potential_winners = words_by_length.first(number_ties_same_length)
      array_of_words.each do |word|
        until potential_winners.include? word
          return word
        end
      end
    else
      words_by_length.first
    end

  def compare_things(score_array)
    i = 1
    while score_array[0] == score_array[1]
      knockout_array.shift
      i +=1
    end
    return i
  end

  end





>>>>>>> adcf6809fbae57bbc49ebf7ab934f836d8b8c14a
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
