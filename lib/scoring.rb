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

   word = word.split(//)
# take each letter and iterate through values of the hash to find the letter
all_points =[]


SCORES.values.each do |array_of_letters|
  if array_of_letters.include? "C"
    points = SCORES.key(array_of_letters)
    all_points << points

  end
end



end

# once letter is found, assign value of the key to that letter

# store value into variable that is an array and add them together
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
