require_relative './spec_helper'
require_relative '../lib/player'

describe Player do
  it "Does the Player Class exist test?" do
    Player.wont_be_nil
  end

  describe "Player#new(name)" do
    it "Does the class initialize with a name" do
      Player.new(name).wont_be_nil
    end
  end

  describe "#plays" do
    test_player = Player.new(name)
    it "Does it contain an array" do
      test_player.plays.must_be_kind_of Array
    end
  end

  describe "#play(word)" do

    test_player = Player.new(name)

    TEST_CASES = ["word", "butt", "fart", "red"]

    TEST_CASES.each do |word|
      it "Does it add the played word?" do
        test_player.play(word).must_equal(TEST_CASES)
      end
    end
  end
end


# describe "#plays" do
#   test_player = Player.new(name)
#   it "Does it return array of words played by player" do
#
#
#   end
# end



# it "returns an array of the words played by the player" do
#   assert Player.plays.include?([])
# end
# end

# describe "Player#plays" do
#   it "Does the 'plays' method exist" do
#     Player.plays.wont_be_nil
#   end
# end
#
# describe "Player#play(word)" do
#   it "Does the play(word) method exist" do
#     "Player#play(name).wont_be_nil"
#   end
# end
#
# describe "Player#total_score" do
#   it "Does the total_score method exist" do
#     "Player#total_score.wont_be_nil"
#   end
# end
#
# describe "Player#won?" do
#   it "Does the won? method exist" do
#     "Player#won?.wont_be_nil"
#   end
# end
#
# describe "Player#highest_scoring_word" do
#   it "Does the highest_scoring_word method exist" do
#     "Player#highest_scoring_word.wont_be_nil"
#   end
# end
#
# describe "Player#highest_word_score?" do
#   it "Does the highest_word_score method exist" do
#     "Player#highest_word_score.wont_be_nil"
#   end
# end
