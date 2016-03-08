class Scoring
  LETTER_SCORING = {
  #   1   =>  %w(A, E, I, O, U, L, N, R, S, T),
  #   2   =>  %w(D, G),
  #   3   =>  %w(B, C, M, P),
  #   4   =>  %w(F, H, V, W, Y),
  #   5   =>  %w(K),
  #   8   =>  %w(J, X),
  #   10  =>  %w(Q, Z)

    "A" => 1,
    "B" => 3,
    "C" => 3,
    "D" => 2,
    "E" => 1,
    "F" => 4,
    "G" => 2,
    "H" => 4,
    "I" => 1,
    "J" => 8,
    "K" => 5,
    "L" => 1,
    "M" => 3,
    "N" => 1,
    "O" => 1,
    "P" => 3,
    "Q" => 10,
    "R" => 1,
    "S" => 1,
    "T" => 1,
    "U" => 1,
    "V" => 4,
    "W" => 4,
    "X" => 8,
    "Y" => 4,
    "Z" => 10,
  }


  def self.score(word)
    word = word.upcase!
	  word_array = word.split("")
	  score_value = 0

	  amount_of_loops = word_array.length
	   if amount_of_loops == 7
	     score_value +=50
	   end

	   word_array.each do |letter|
	     LETTER_SCORING.each do |hash_letter, point_value|
		     if hash_letter == letter
		        score_value += point_value
		     end
		   end
	   end
     return score_value
  end

  def self.highest_score_from(array_of_words)

  end

end
