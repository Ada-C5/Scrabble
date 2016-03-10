require_relative "./spec_helper"
require_relative "../scrabble"


#ARRAY = {
#	"Suzanne" => ["cramps", "develop", "mixup", "dogs"]
#	"Jeremy" => ["zebra", "naysays", "pigsty", "doggies"]
#}
describe Scrabble::Player do
  it "it is an object we have acccess to" do
    Scrabble::Player.wont_be_nil
  end


  describe "Player#name" do
  	suzanne = Player.new("Suzanne")
    	it "should return Suzanne" do
    	 suzanne.name.must_equal("Suzanne")
    	end
  end

  describe "Player#plays" do
  	suzanne = Player.new("Suzanne")
  	it "should return words:" do
  		suzanne.plays.must_equal(["cramps", "develop", "mixup", "doggies"])
  	end
  end

  #describe "Player#play(word)" do
  #	it "adds input word to the array"
  #	suzanne.play("spider").must_equal(9)
  #end

  # describe "Player#total_score" do
  # 	suzanne = Player.new("Suzanne")
  #   it "should return sum of scores of played words"
  # 		suzanne.total_score.must_equal(151)
  # 	end
  # end

  # describe "Player#won?" do
  # 	it "return true for player with >100 points"
end
