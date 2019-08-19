# display_board: display a tic-tac-toe board given a current board state
# => board - the current board state to display
def display_board(board)
  # create a separator string
  separator = ""
  11.times do
    separator += "-"
  end
  # display the tic-tac-toe board to the CLI
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts(separator)
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts(separator)
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

# input_to_index: converts a user entry to an array index for move processing
# => input - the user input
# <= the board index requested as an integer
def input_to_index(input)
  return input.to_i - 1
end

# position_taken: determines if a position on a board is taken
# => board - the current board state
# => index - the space on the board to check (0-8)
# <= True - if the position on the board has a symbol
# <= False - if the position on the board is empty
def position_taken?(board,index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

# valid_move: determines if a move is valid
# => board -  the current board state
# => index - the space on the board to check
# <= True - if the position on the board is a valid move
# <= False - if the position on the board is not a valid move
def valid_move?(board, index)
  in_range = (index >= 0 && index <= 8)
  return in_range && !position_taken?(board, index)
end

# turn: execute a turn of tic-tac-toe
# => board -  the current board state
