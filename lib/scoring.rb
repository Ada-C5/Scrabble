class Scoring
  SCORES = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
  }

  # Method doesnt work yet
  def self.score(word)
    word = "cat"
      # letter_array = []
   letter_array = word.split(//)
  end

    # word = "A"
  #   word = "A"
  #   # => ["c", "a", "t"]
  #   SCORES.each_value do |array_of_letters|
  #     if array_of_letters.include?(word)
  #       puts "we are good"
  #     end
  #   end
  # end
  # SCORES.each_value do |letter|
  #   if word.each.include?(letter)
  #     points = key
  #     puts points
  #   end
  # end
end
