# require_relative "../scrabble"

class Scrabble::Scoring
SEVEN_LETTER_BONUS = 50
PLAYED_WORDS = []
WORDS_SCORE = []
WORD_SCORE_COLLECTION =[]

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
    bonus = SEVEN_LETTER_BONUS
    word_score += bonus if word.length == 7
    word_array = word.split("")
    word_array.each do |letter|
      temp_letter_val = letter_value(letter)
      word_score += temp_letter_val
    end
    # PLAYED_WORDS << word
    # WORDSSCORE << word_score
    # WORD_SCORE_COLLECTION = PLAYED_WORDS.zip(WORDSSCORE)
    return word_score
  end

  def self.highest_score_from(word_array)
    by_scores = word_array.group_by { |word| self.score(word) }
      win_words = by_scores.max[1]
    if win_words.length == 1
      return win_words[0]
    elsif win_words.any? { |word| word.length == 7 }
        seven_letter_words = win_words.select { |word| word.length == 7}
        return seven_letter_words.first
    else
      min_word = win_words.min_by { |word| word.length }
      return min_word
    end
  end

end

  # def self.collect_score_array(word)
    # WORDS_SCORE << self.score(word)
    # return WORDS_SCORE
  # end
  #
  # def self.collect_word_array(word)
    # PLAYED_WORDS << word
    # return PLAYED_WORDS
  # end

  # def self.combined_collection
    # word_score_collection = PLAYED_WORDS.zip(WORDS_SCORE).to_h
    # return word_score_collection
  # end

#=======================================================================
# def self.score(word)
#     value_array = []
#    x = (word).split("")
#     x.each do |letter|
#         value_array << letter_value(letter)
#     end
#       total = value_array.inject(:+)
#       return word, total
# end
