require_relative 'board'
require_relative 'player'

require 'rainbow'

class Game
  def initialize
    # Create new game board
    @board = Board.new
    
    # Create players
    @x = Player.new('X')
    @o = Player.new('O')
    
    # Display game instructions
    instructions
  end
  
  # Shows users instructions to play game
  def instructions
    puts "Lorum ipsum"
  end
  
  # Play the game
  def play
    until win?
      turn(@x.name)
      $board[@x_move.downcase.to_sym] = Rainbow("X").red
      @board.draw
      
      turn(@o.name)
      $board[@o_move.downcase.to_sym] = Rainbow("O").green
      @board.draw
    end
  end
  
  private
  
  # Lets player X and player O take turns
  def turn(player)
    if player == 'X'
      print "\nPlayer X turn >> "
      @x_move = gets.chomp
    elsif player == 'O'
      print  "\nPlayer O turn >> "
      @o_move = gets.chomp
    end
  end
  
  # Checks if player made valid move
  def valid_move
  end
  
  # Checks if player has won
  def win?
    false
  end
end