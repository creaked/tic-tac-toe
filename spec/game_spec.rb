require_relative "../lib/tic-tac-toe/game.rb"

describe Game do
  before(:each) do
    @game = Game.new
  end
  
  it "creates new game" do
    expect(@game).to be_a_instance_of(Game)
  end
end