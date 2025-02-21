def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board,index)
  if  index<8 && index>=0 && position_taken?(board,index) == false
    return true
  else
    return false
  end
end

def input_to_index(input)
    input = input.to_i - 1
end

def move(board,input,char='X')
  board[input] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board,input,char='X')
  else
    "Please submit another input"
    turn(board)
  end
  display_board(board)
end
