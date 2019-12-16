# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board_array)
  # combo_arr = [3,4,5]
  WIN_COMBINATIONS.each do |combo_arr|

    first_index = combo_arr[0]#3
    second_index = combo_arr[1]#4
    third_index = combo_arr[2]#5


    the_symbol_at_first_index = board_array[first_index] # load the value of the board at win_index_1
    the_symbol_at_second_index = board_array[second_index] # load the value of the board at win_index_2
    the_symbol_at_third_index = board_array[third_index] # load the value of the board at win_index_3

    if the_symbol_at_first_index == the_symbol_at_second_index && the_symbol_at_second_index == the_symbol_at_third_index && the_symbol_at_first_index != " "
      return combo_arr
    end
  end

  return false

end


def full?(board_array)

  board_array.each do |symbol|
    if symbol == " "
      return false
    end
  end

  return true

end

def draw?(board_array)
  if full?(board_array) && !won?(board_array)
    return true
  else
    return false
  end
end

def over?(board_array)
  if won?(board_array) || draw?(board_array)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    arr_winning_combination = won?(board)
    index = arr_winning_combination[0]
    return board[index]
  else
    return nil
  end
end
