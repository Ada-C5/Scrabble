class Scoring
  LETTER_VALUE = { "A"=> 1, "E"=> 1, "I"=> 1, "O"=> 1, "U"=> 1, "L"=> 1, "N"=> 1, "R"=> 1, "S"=> 1, "T"=> 1,
                   "D"=> 2, "G"=> 2,
                   "B"=> 3, "C"=> 3, "M"=> 3, "P"=> 3,
                   "F"=> 4, "H"=> 4, "V"=> 4, "W"=> 4, "Y"=> 4,
                   "K"=> 5,
                   "J"=> 8, "X"=> 8,
                   "Q"=> 10, "Z"=> 10
                 }

      def self.score(word)
        total = 0
        word.upcase.each_char do |key|
          total = total + LETTER_VALUE[key]
        end
        word.length == 7 ? total + 50 : total  # Return is implicit
      end




      def self.highest_score_from(array)
        hash ={}             #this hash will contain words and their values/scores

        array.each do |word|
          hash[word] = score(word)
        end

        array_values = hash.values   #this is taking the values of the hash and storing them in an array

        max_value = array_values.max  #this is finding the max value of the values and storing as a variable

        winner = hash.key(max_value)    #this is finding the corresponding key/word to that max value

        return winner
      
      end
end
