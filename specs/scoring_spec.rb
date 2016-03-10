# require_relative './spec_helper'
#
#
# describe Scrabble::Scoring do
#   it "is an object we have access to" do
#     Scrabble::Scoring.wont_be_nil
#   end
# end
#
# describe "Scrabble::Score.score" do
#   TEST_SCRABBLE_SCORE = {
#     1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
#     2 => ["D", "G"],
#     3 => ["B", "C", "M", "P"],
#     4 => ["F", "H", "V", "W", "Y"],
#     5 => ["K"],
#     8 => ["J", "X"],
#     10 => ["Q", "Z"]
#   }
#
#   # tests single letter
#   TEST_SCRABBLE_SCORE.each do |points, letters_array|
#     it "should return the scrabble score of #{points} for the letter #{letters_array}" do
#       letters_array.each do |letter_from_array|
#         Scrabble::Scoring.score(letter_from_array).must_equal points
#       end
#     end
#   end
#
#   # tests 2 characters
#   it "should return the value '2' for the word 'AE' " do
#     Scrabble::Scoring.score("AE").must_equal 2
#   end
#
#   # check case sensativity and multiple characters with different points for total score value
#   it "should return the value '5' for the word 'cAt'" do
#     Scrabble::Scoring.score("cAt").must_equal 5
#   end
#
#   # check if user used all 7 tiles and adds 50 points to the score
#   it "should return the value '57' for the word 'aaaaaaa'" do
#     Scrabble::Scoring.score('aaaaaaa').must_equal 57
#   end
#
#   # checked another 7 letter word =)
#   it "should return the value '60' for the word 'Valerie'" do
#     Scrabble::Scoring.score('Valerie').must_equal 60
#   end
# end
#
# describe "Scrabble::Scoring.highest_score_from(array_of_words)" do
#
#   # build of array of words and return the highest value word
#
#   it "should return the word 'hello' for the word_array = ['hello']" do
#     array_of_words = ["hello"]
#     Scrabble::Scoring.highest_score_from(array_of_words).must_equal "hello"
#   end
#
#   it "should return the word 'hello' as the highest score from the word_array = ['hello', 'cat']" do
#     array_of_words = ["hello", "cat"]
#     Scrabble::Scoring.highest_score_from(array_of_words).must_equal "hello"
#   end
#
#   # for tiebreaker, the word with less tiles used is returned
#   it "should return the word 'fee' from the word_array = ['cats', 'fee', 'no']" do
#     array_of_words = ["cats", "fee", "no"]
#     Scrabble::Scoring.highest_score_from(array_of_words).must_equal "fee"
#   end
#
#   # if top score is tied between multiple words but one used all seven letters, that one wins
#   it "should return the word 'aaaaaaa' from the word_array = ['feet', 'aaaaaad', 'no', 'qqqqqj']" do
#     # chose the following words because aaaaaad's score is 58 including the 7-letter bonus,
#     # and qqqqqj's score is also 58 just because of the rare letters
#     array_of_words = ["feet", "aaaaaad", "no", "qqqqqj"]
#     Scrabble::Scoring.highest_score_from(array_of_words).must_equal "aaaaaad"
#   end
#
#   it "should return the word 'aaaaaaa' from the word_array = ['feet', 'qqqqqj, 'no', 'aaaaaad']! BACKWARDS MODE!" do
#     # chose the following words because aaaaaad's score is 58 including the 7-letter bonus,
#     # and qqqqqj's score is also 58 just because of the rare letters
#     array_of_words = ["feet", "qqqqqj", "no", "aaaaaad"]
#     Scrabble::Scoring.highest_score_from(array_of_words).must_equal "aaaaaad"
#   end
#
#   # testing multiple words with same score and same length
#   it "should return 'aaaaaaa' from the word_array = ['aaaaaaa', 'eeeeeee', 'frog']" do
#     array_of_words = ["aaaaaaa", "eeeeeee", "frog"]
#     Scrabble::Scoring.highest_score_from(array_of_words).must_equal "aaaaaaa"
#   end
#
#   it %!should return 'aaaaaad' from the word_array = ["nose", "aaaaaad", "eeeeeed", "frog", "rrrrrrr", "qqqqqj"]! do
#     array_of_words = ["nose", "aaaaaad", "eeeeeed", "frog", "rrrrrrr", "qqqqqj"]
#     Scrabble::Scoring.highest_score_from(array_of_words).must_equal "aaaaaad"
#   end
# end
