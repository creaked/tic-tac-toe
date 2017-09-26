require_relative "../lib/tic-tac-toe/board.rb"
require 'match_hash'

describe Board do
  before(:each) do
    @board = Board.new
  end
  
  it "creates new hash for game board" do
    expect($board).to be_an_instance_of(Hash)
  end
    
  it "creates empty game board" do
    expect($board).to match_hash({ :a1 => " ", :a2 => " ", :a3 => " ",
                                   :b1 => " ", :b2 => " ", :b3 => " ",
                                   :c1 => " ", :c2 => " ", :c3 => " " })
  end
end