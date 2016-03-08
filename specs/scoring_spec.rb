require_relative './spec_helper'
require_relative '../lib/scoring.rb'

describe Scoring do
  it "is an object we have access to" do
    Scrabble::Scoring.wont_be_nil
  end
end
