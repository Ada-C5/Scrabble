require_relative '../scrabble'

class Scrabble::Scoring

  SCORE_CHART = {
"A" => 1,
"E" => 1,
"I" => 1,
"O" => 1,
"U" => 1,
"L" => 1,
"N" => 1,
"R" => 1,
"S" => 1,
"T" => 1,
"D" => 2,
"G" => 2,
"B" => 3,
"C" => 3,
"M" => 3,
"P" => 3,
"F" => 4,
"H" => 4,
"V" => 4,
"W" => 4,
"Y" => 4,
"K" => 5,
"J" => 8,
"X" => 8,
"Q" => 10,
"Z" => 10
}

  def self.score(word)
      puts score
  end

  def self.word_letters(word)
     word.split(//)
  end

  def self.finding_values(word)

      # see what the letter's key is and return all keys in a new array
      word_letters.map { |letter| letter == SCORE_CHART[] }

  end

  def self.letter_points(letter)
    SCORE_CHART.fetch(letter)
  end


end
