require_relative './spec_helper'
require_relative '../scrabble'
require_relative '../lib/tilebag'

describe Scrabble::Tilebag do

  before do
    @tilebag = Scrabble::Tilebag.new
  end

	it "exists" do
		Scrabble::Tilebag.wont_be_nil
	end

  it "has the correct letters" do
    @tilebag.tiles.must_include	"DEFAULT_TILES"
  end

end
