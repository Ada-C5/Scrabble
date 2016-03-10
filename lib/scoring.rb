#require_relative '../scrabble'  #   allows this class to access scrabble and run through irb

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
      # compares the score of the words
      if word_array[1] == highest_score_array[1]  # compare score
        # compares the length of the words
        if word_array[2] < highest_score_array[2]
          highest_score_array[2] == 7 ? highest_score_array : highest_score_array = word_array
          #highest_score_array = word_array # replace the highest score to the word_array being referenced
        elsif word_array[2] >= highest_score_array[2]
          if highest_score_array[2] < 7
            word_array[2] == 7 ? highest_score_array = word_array : highest_score_array
          end
        end
      elsif word_array[1] > highest_score_array[1]
        highest_score_array = word_array
      end
    end
    return highest_score_array[0]
  end
end


# highest_word = ""
#       highest_score = 0
#
# array_of_words.each  do |word|
#   new_score = self.score(word)
#   puts "word: #{word}"
#   if new_score > highest_score
#     puts " new score for #{word} is greater than highest_score for #{highest_word}"
#
#     highest_score = new_score
#     highest_word = word
#   elsif new_score == highest_score
#     # tie breaker
#     puts "its a tie"
#     if highest_word.length == 7
#       highest_word = word
#     elsif word.length > highest_word.length
#       puts " #{word} word.length is greater than #{highest_word} highest_word.length"
#
#       highest_word = word if word.length == 7
#     elsif word.length < highest_word.length
#       puts " #{word} word.length is less than #{highest_word} highest_word.length"
#
#       highest_word = word
#     end
#
#   elsif new_score < highest_score
#     puts "new score is less tahn highest_score"
#     highest_word
#   end
#   puts "at the end of the loop. before return"
#   highest_word
# end
#
# puts "highest word = #{highest_word}"
