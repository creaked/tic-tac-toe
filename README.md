# tic-tac-toe
[![Build Status](https://travis-ci.org/creaked/tic-tac-toe.svg?branch=master)](https://travis-ci.org/creaked/tic-tac-toe)

![Alt text](https://image.ibb.co/jvRwEv/Screen_Shot_2017_08_17_at_9_25_41_AM.png "Game Screen Shot")

### How to play:
1. ``$ git clone https://github.com/creaked/tic-tac-toe.git``
2. ``$ cd tic-tac-toe``
3. ``$ bundle install``
4. ``$ ruby bin/tic-tac-toe.rb``

Each opponent takes turns entering in the position of their choice on the grid.
To win a player must get 3 in a row vertically, horizontally, or diagonally. If
at the end of the game there is no winner the game will result in a draw.

### TODO:
1. ~~Add tests~~
2. Add simple AI
3. Refactor

***

### Task:

Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

1. Think about how you would set up the different elements within the game... What should be a class? Instance variable?  Method? A few minutes of thought can save you from wasting an hour of coding.
2. Build your game, taking care to not share information between classes any more than you have to.
