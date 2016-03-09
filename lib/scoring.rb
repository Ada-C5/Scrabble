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

  # Take a word, upcase it, and return an array of its letters
  def self.word_letters(word)
     word.upcase.split(//)
  end

  # Finds the point value of each letter given
  def self.letter_points(letter)
    SCORE_CHART.fetch(letter)
  end

  # Finds point value of each letter in a word
  # Creates an array of points for each letter
  def self.word_points(word)
    word_letters(word).map { |i| letter_points(i) }
  end

  # Sums the points from the word_points array
  def self.score(word)
    total = 0
    # Adds a bonus for 7-letter words.
    if word_points(word).length == 7 then total = 50 end
    total += word_points(word).reduce(:+)
    total
  end

  def self.word_scores(array_of_words)
    # word_scores stores the points of each word in the array_of_words
    array_of_words.map { |word| score(word) }
  end

  def self.word_score_pairs(array_of_words)
    # scores each word in array_of_words, then zips scores to words, creating subarray pairs - still in original TEST_WORD_ARRAY order.
    array_of_words.zip(word_scores(array_of_words))
  end

  def self.sort_pairs(array_of_words)
    # takes array from word_score_pairs and sorts by points.
    word_score_pairs(array_of_words).sort_by { |pair| pair[1]}
  end

  def self.find_ties(array_of_words)
    # If multiple words have the same highest-score, return the word with the least letters
    sort_pairs(array_of_words).find_all { |pair| pair[1] == sort_pairs(array_of_words)[-1][1] }
  end

  # Returns the highest-valued word in a word_array.
  def self.highest_score_from(array_of_words)
    if find_ties(array_of_words).length > 1
      smallest = find_ties(array_of_words).min_by { |pair| pair[0].length}
      return smallest[0]
    end
    # Returns the highest-scoring word.
    return sort_pairs(array_of_words)[-1][0]
  end
end
