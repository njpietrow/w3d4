require_relative "piece"

class Knight < Piece
  MOVES = [
    [2,1],
    [1,2],
    [-2,1],
    [-1,2],
    [2,-1],
    [1,-2],
    [-2,-1],
    [-1,-2]
  ]

  def moves
    potential_moves = move_diffs
    potential_moves.select { |move| board.inbounds?(move) && opposite_color?(move) }
  end  
  
  def symbol
    "♘"
  end

  protected
  def move_diffs
    row, col = pos
    MOVES.map do |move|
      [(row + move.first), (col + move.last)]
    end
  end
end