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
  win = 0
  if board.all? {|i| i == " "}
    false
  else
    WIN_COMBINATIONS.each do |combo|
      if (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X")
        win = combo
        return win
      elsif (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
        win = combo
        return win
      end
    end
    if board.none? {|i| i == " "} && win == 0
      return false
    end
  end
end

#full? Method
def full?(board)
  !board.any? {|i| i == " "}
end

#draw? Method
def draw?(board)
  won?(board) == nil && full?(board)
end

#over? Method
def over?(board)
  won?(board) != nil || draw?(board)
end

#winner Method
def winner(board)
  if won?(board) != nil
    puts "#{board[won?(board)[0]]}"
  else
    nil
  end
end
