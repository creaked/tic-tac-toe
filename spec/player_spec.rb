require_relative "../lib/tic-tac-toe/player.rb"

describe Player do
  before(:each) do
    @X = Player.new('X')
    @O = Player.new('O')
  end
  
  it "creates two players" do
    expect(@X.name).to eql('X')
    expect(@O.name).to eql('O')
  end
end