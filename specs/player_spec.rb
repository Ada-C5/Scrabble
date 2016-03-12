require_relative "./spec_helper"
require_relative "../scrabble"


describe Player do
  it "it is an object we have acccess to" do
    Player.wont_be_nil
  end
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

  describe "Player#play(word)" do
    suzanne = Player.new("Suzanne")
    nadine = Player.new("Nadine")
   	it "adds input word to the array" do
    suzanne.play("spider").must_equal(false)
    end
    it "adds input word to the array" do
    nadine.play("cat").must_equal(5)
    end
  end

   describe "Player#total_score" do
   	suzanne = Player.new("Suzanne")
     it "should return 151 for Suzanne" do
   		suzanne.total_score.must_equal(151)
   	end
   end

  describe "Player#won?" do
    suzanne = Player.new("Suzanne")
   	it "return true for player with >100 points" do
    suzanne.won?.must_equal(true)
    end
  end

  describe "Player#highest_scoring_word" do
    suzanne = Player.new("Suzanne")
    nadine = Player.new("Nadine")
    jeremy = Player.new("Jeremy")
    it "should return highest scoring played word" do
      suzanne.highest_scoring_word.must_equal("develop")
    end
    it "should return highest scoring played word" do
      nadine.highest_scoring_word.must_equal("mice")
    end
    it "should return highest scoring played word" do
      jeremy.highest_scoring_word.must_equal("naysays")
    end
  end

  describe "Player#highest_word_score" do
    suzanne = Player.new("Suzanne")
    it "should return highest word score" do
      suzanne.highest_word_score.must_equal(63)
    end
  end

  describe "Player#tiles" do
    suzanne = Player.new("Suzanne")
    it "should return a collection of letters can play (max 7)" do
      suzanne.tiles.must_equal.Array
    end
  end

  describe "Player#draw_tiles(tile_bag)" do
    suzanne = Player.new("Suzanne")
    it "should fill tiles array until it has 7 letters" do
      suzanne.draw_tiles
      suzanne.tiles.length.must_equal(7)
    end
  end
