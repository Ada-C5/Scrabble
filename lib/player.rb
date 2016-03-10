require File.expand_path('../scoring.rb',__FILE__)

class Player < Scoring
	attr_accessor :name

	def initialize (name)
		@name = name
	end

	def hash_players
		hash_players = {
			"Suzanne" => ["cramps", "develop", "mixup", "doggies"],
			"Jeremy" => ["zebra", "naysays", "pigsty"]
		}
	end

	def plays
		played_words = []
		hash_players.each do |name, words|
			if @name == name
				played_words = words
			end
		end
		return played_words
	end

	def self.score(word)
		super
	end

	# def total_score
	# 	total_array_values = 0
	# 	hash_players.each do |name, array|
	# 		if @name == name
	# 			array.each do |word|
	# 				total_array_values += Scoring.score(word)
	# 			end
	# 		end
	# 	end
	# 	return total_array_values
	# end

end
