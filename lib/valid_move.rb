board = [" ", " ", " ", "X", " ", "O", " ", " ", " "]
# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board,index)
    true
  elsif index.is_a? Integer
    true
  else index.between?(0,8)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || board[index] == ""
    false
  else board[index] == nil
    false
  end
end
