class Player 
	attr_accessor :name

	def initialize (name)
		@name = name
	end

	ARRAY = {
	"Suzanne" => ["cramps", "develop", "mixup", "doggies"],
	"Jeremy" => ["zebra", "naysays", "pigsty"]
}
	
	def plays
		played_words = []
		ARRAY.each do |name, words|
			if @name == name
				played_words = words
			end
		end
		return played_words
	end

	def total_score 


end