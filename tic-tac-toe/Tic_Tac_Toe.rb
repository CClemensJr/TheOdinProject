class Game

end


class Board

  def initialize
    @row_1 = ["1", "2", "3"]
    @row_2 = ["4", "5", "6"]
    @row_3 = ["7", "8", "9"]
  end

  def create_board
    puts "#{@row_1}"
    puts "#{@row_2}"
    puts "#{@row_3}"
  end
end


class Player

end


new_board = Board.new
new_board.create_board
