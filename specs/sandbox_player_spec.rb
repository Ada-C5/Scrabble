#require_relative './spec_helper'
#require_relative '../scrabble'
#require_relative '../lib/player'
#
#describe Scrabble::Player do
#  let(:jane) { jane = Scrabble::Player.new("Jane") 
#               jane.play("cat")
#               return jane
#              }
#  
#  
#  let(:bob) { Scrabble::Player.new("bob") 
#              }
#  
#  
#  let(:fred) { Scrabble::Player.new("fred") 
#               # fred.play("cupcake")
#               # fred.play("abalone")
#               # return fred
#             }
#
#
#  
#
#
#
#  it "exists" do
#		Scrabble::Player.wont_be_nil
#	end
#
#  # this test works because a proc is an objct that holds the code and runs it at testing and returns the value
#  it "has a name(sb)" do
#    proc { Scrabble::Player.new() }.must_raise(ArgumentError)
#  end
#
#  it "(sb)returns the name when queried" do
#    jane.name.must_equal("Jane")
#  end
#
#  it "(sb)will return a value when total score is queried" do
#  	jane.total_score.wont_be_nil
#  end
#
#  it "(sb)will return the score when a play is made" do
#    jane.play("cat").must_equal(5)
#  end
#
#  it "(sb)will push a word into the plays array" do
#    jane.play("sat")
#    jane.plays.must_include("sat")
#  end
#
#  # this test is meaningful because it tests if the score increases.
#  # we use a word we know the score of to test if the total_score increases by that much.
#  it "(sb)will increase total_score when a word is played" do
#    jane.total_score.must_equal(score + 5)
#  end
#
#  it "(sb)will return true if total score is > 100" do
#    fred.won?.must_equal(true)
#  end
#
#  it "(sb)will return false if total score is < 100" do
#    bob.won?.must_equal(false)
#  end
#
#	it "(sb)returns highest scoring word in an array" do
#		fred.highest_scoring_word(fred.plays).must_equal("cupcake")
#	end
#
#  it "(sb)returns the score for highest scoring word" do 
#    fred.highest_word_score.must_equal(67)
#  end
#
#  it "(sb)will return false if a winner tries to make a play" do
#    fred.play("cat").must_equal(false)
#  end
#end
#