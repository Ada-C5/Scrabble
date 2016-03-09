require_relative './spec_helper'
require_relative '../lib/player'

describe Player do
  before do
    @sarah = Player.new("sarah")
  end


    it "is an object we have access to" do
    Player.wont_be_nil

  end

  describe "Player#name" do
    it "returns sarah when initialized with sarah" do
      @sarah.name.must_equal "sarah"

    end
  end

describe "words played by player" do
  before do
    @sarah.play("cat")
  end


    it "returns the score of the word for the play(word) method" do
      @sarah.play("cat").must_equal 5
    end


     it "returns an array of words gussed for the plays method" do
       @sarah.plays.must_equal ["cat"]

     end



     it "returns the total score of all words played for the total_score method" do
       @sarah.total_score.must_equal 5
     end


   end
end
