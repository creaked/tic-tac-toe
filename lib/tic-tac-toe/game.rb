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
  end
  
  # Play the game
  def play
    @board.draw
    until win or draw
      x_turn
      o_turn
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
  
  def x_turn
    turn(@x.name)
    if $board[@x_move.downcase.to_sym] == " "
      $board[@x_move.downcase.to_sym] = Rainbow("X").red
      @board.draw
    else
      puts "invalid move"
      x_turn
    end
  end
  
  def o_turn
    turn(@o.name)
    if $board[@o_move.downcase.to_sym] == " "
      $board[@o_move.downcase.to_sym] = Rainbow("O").green
      @board.draw
    else
      puts "invalid move"
      o_turn
    end
  end
  
  # Checks if player has won
  def win
    false
  end
  
  def draw
    false
  end
end