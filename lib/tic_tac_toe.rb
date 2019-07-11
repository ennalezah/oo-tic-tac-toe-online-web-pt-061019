class TicTacToe
  attr_accessor :board

  WIN_COMBINATIONS = [
    [0,1,2], # top row
    [3,4,5], # middle row
    [6,7,8], # bottom row
    [0,3,6], # left col
    [1,4,7], # middle col
    [2,5,8], # right col
    [0,4,8], # left diag
    [2,4,6]  # right diag
  ]
  
  def initialize
    board = Array.new(9, " ")
    @board = board
    # @board = [" ", " ", " ",
    #           " ", " ", " ",
    #           " ", " ", " "]
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)   # converts move input to array-friendly index
    index = input.to_i - 1
  end
  
  def move(input, token = "X")    #adds token to board - player view
    @board[input] = token
  end
  
  def position_taken?(input)
    index = input_to_index(input)
      
      if @board[index] == "X" || @board[index] == "O" || @board[index] != " "
        true
      else 
        false
      end
  end
end