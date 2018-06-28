
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  index = (Integer(user_input) rescue 0) - 1 #sets index to 0 is the user input is not a string
end

def valid_move?(board, index)
  if index > -1 && index < 9 && (board[index]==" " || board[index] == "")
    true
  else
    false
  end
end

def move(board, index, value = "X")
	board[index] = value
end

def turn (board)
  puts "Please enter 1-9:"
  index = gets.strip
  input_to_index(index)
end
