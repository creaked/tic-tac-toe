class Board
  def initialize
    # Creates empty game board
    $board = { :a1 => " ", :a2 => " ", :a3 => " ",
               :b1 => " ", :b2 => " ", :b3 => " ",
               :c1 => " ", :c2 => " ", :c3 => " " }
  end
  
  # Draw gameboard on screen
  def draw
    puts Rainbow("   1   2   3").blue
    puts Rainbow("A").yellow + "  #{$board[:a1]} | #{$board[:a2]} | #{$board[:a3]} "
    puts Rainbow("B").yellow + "  #{$board[:b1]} | #{$board[:b2]} | #{$board[:b3]} "
    puts Rainbow("C").yellow + "  #{$board[:c1]} | #{$board[:c2]} | #{$board[:c3]} "
  end
end