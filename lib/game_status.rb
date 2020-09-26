# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

#won? Method
def won?(board)
  if board.all? {|i| i == " "}
    false
  elsif board.none? {|i| i == " "}
    false
  else
    WIN_COMBINATIONS.each do |combo|
      if (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X")
        return combo
      elsif (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
        return combo
      elsif (board[combo[0]] == " " && board[combo[1]] == " " && board[combo[2]] == " ")
        false
      else
        false
      end
    end
  end
end
