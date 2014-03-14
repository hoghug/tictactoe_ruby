class Board

  @@board_spaces = []
  @@winning_combos = [[1,4,7], [2,5,8], [3,6,9], [1,2,3], [4,5,6], [7,8,9], [1,5,9], [3,5,7]]
  @@players = ['X', 'O']


  def initialize(num_spaces)
    @num_spaces = num_spaces
  end

  def Board.create(num_spaces)
    new_board = Board.new(num_spaces)
    for i in 1..num_spaces
      new_space = Space.new(i)
      @@board_spaces << new_space
    end
    new_board
  end

  def Board.all
    @@board_spaces
  end

  def Board.winners
    @@winning_combos
  end

  def Board.players
    @@players
  end



end
