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

# turn: execute a turn of tic-tac-toe
