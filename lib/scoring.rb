class Scrabble::Scoring

  LETTERS = {
  %w(A E I O U L N R S T) => 1,
  %w(D G) => 2,
  %w(B C M P) => 3,
  %w(F H V W Y) => 4,
  %w(K) => 5,
  %w(J X) => 8,
  %w(Q Z) => 10
}

  def self.letter_value(letter)
      LETTERS.each do |key, value|
          if key.include? letter
              return value
          end
      end
  end

  def self.score(word)
    word_score = 0
    word_array = word.split("")
    word_array.each do |letter|
      temp_letter_val = letter_value(letter)
      word_score += temp_letter_val
    end
    return word_score
  end

end

#=======================================================================
# def self.score(word)
#     value_array = []
#    x = (word).split("")
#     x.each do |letter|
#         value_array << letter_value(letter)
#     end
#       total = value_array.inject(:+)
#       return total
# end
