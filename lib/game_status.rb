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

#won? Method alternate
def won?(board)
  temp = 0
  if board.all? {|i| i == " "}
    false
  end
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || position_1 == "O" && position_2 == "O" && position_3 == "O"
      temp = win_combination
      return win_combination
    else
      false
    end
  end
  if board.none? {|i| i == " "} && temp = 0
    false
  end
end

#full? Method
def full?(board)
  !board.any? {|i| i == " "}
end

#draw? Method
def draw?(board)
  !won?(board) && full?(board)
end

#over? Method
def over?(board)
  if !won?(board) || draw?(board)
    true
  else
    false
  end
end

#winner Method
def winner(board)
  if over?(board) && won?(board) != false
    puts "#{won?(board)[0]}"
  else
    nil
  end
end
