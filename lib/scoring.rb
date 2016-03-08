class Scoring
include Scrabble
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



end
