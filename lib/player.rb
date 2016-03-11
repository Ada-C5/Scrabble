class Scrabble::Player
  attr_reader :name, :played_words, :bag, :tiles
   def initialize(hash)
    @name = hash[:name]
    @played_words = hash[:words]
    @bag = Scrabble::TileBag.new
    @tiles = @bag.draw_tiles(7)
   end

   def play(word)
    # removes number of played tiles and re-draws from tile bag
    length = word.length
    @tiles.pop(length)
    # pass new word to tiles_method to remove those letters from @tiles
    draw(length)

    # returns false if already won
    if won?
      return false
    else
      @played_words << word
      Scrabble::Scoring.score(word)
    end
   end

   def total_score
    points = 0
    played_words.each do |word|
      points += Scrabble::Scoring.score(word)
    end
    return points
   end

   def won?
    total_score >= 100 ? true : false
   end

   # Returns the highest scoring played word
   def highest_scoring_word
      played_words.max_by {|word| Scrabble::Scoring.score(word)}
   end

   # Returns the highest_scoring_word score
   def highest_word_score
      highest_word = played_words.max_by {|word| Scrabble::Scoring.score(word)}
      Scrabble::Scoring.score(highest_word)
   end

   # removes letters from played word and repopulates tiles to 7
   def draw(length)
    @tiles += @bag.draw_tiles(length)
    return @tiles
   end
end
