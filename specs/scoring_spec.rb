require_relative "./spec_helper"
require_relative "../scrabble"

describe Scrabble::Scoring do
  it "it is an object we have acccess to" do
    Scrabble::Scoring.wont_be_nil
  end
end
