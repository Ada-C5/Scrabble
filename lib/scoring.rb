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
  SCORES.values.each_with_index do |letter|
    if word.each.include?(letter)
      points = letter.keys
      puts points
    end
  end
end
