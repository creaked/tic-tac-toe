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
    loop do
      x_turn
      if check_win == true
        puts "X Wins"
        break 
      end
      break if check_draw == true
      
      o_turn
      if check_win == true
        puts "O Wins"
        break 
      end
      break if check_draw == true
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
  def check_win
    values = $board.values
    true if (values[0] == values[1] && values[1] == values[2] && values[0] != " ") ||
            (values[3] == values[4] && values[4] == values[5] && values[3] != " ") ||
            (values[6] == values[7] && values[7] == values[8] && values[6] != " ") ||
            (values[0] == values[3] && values[3] == values[6] && values[0] != " ") ||
            (values[1] == values[4] && values[4] == values[7] && values[1] != " ") ||
            (values[2] == values[5] && values[5] == values[8] && values[2] != " ") ||
 	          (values[0] == values[4] && values[4] == values[8] && values[0] != " ") ||
            (values[2] == values[4] && values[4] == values[6] && values[2] != " ")
  end
  
  def check_draw
    false if $board.has_value?(" ")  == true
    true if $board.has_value?(" ") != true
  end
end