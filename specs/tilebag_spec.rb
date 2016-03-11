require_relative './spec_helper'
require_relative '../scrabble.rb'

describe Tilebag do                   #this is testing to make sure Tilebag exists
  it "will not be nil" do
    Tilebag.wont_be_nil
  end
end

#this tests to make sure the initialize method exists
 describe "Tilebag#new" do
  it "does the class initialize a collection of default tiles" do
    my_bag = Tilebag.new
    my_bag.tiles_in_bag.wont_be_nil

  end
end
