class TicTacToe
  def initialize (board=nil)
    @board=board ||Array.new(9," ")
  end

WIN_COMBINATIONS=[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

def display_board
  rows=["","",""]
  line=["-----------"]
  rows.each_with_index do|pos,index|
    rows[index]=" #{@board[rows.length*index]} | #{@board[rows.length*index+1]} | #{@board[rows.length*index+2]} "
  end
  puts [rows[0],line,rows[1],line,rows[2]]
end


  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

def current_player
  turn_count%2==0 ? "X":"O"
end


def input_to_index(pos)
  pos.to_i-1
end

def move(index, player)
  @board[index] = player
end

def position_taken?(location)
  @board[location] != " " && @board[location] != ""
end
  
def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index,current_player(board))
    display_board(board)
  else
    turn(board)
  end
end



end