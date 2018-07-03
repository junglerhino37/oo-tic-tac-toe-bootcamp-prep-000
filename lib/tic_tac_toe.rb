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

def display_board(board)
  rows=["","",""]
  line=["-----------"]
  rows.each_with_index do|pos,index|
    rows[index]=" #{board[rows.length*index]} | #{board[rows.length*index+1]} | #{board[rows.length*index+2]} "
  end
  puts [rows[0],line,rows[1],line,rows[2]]
end


end