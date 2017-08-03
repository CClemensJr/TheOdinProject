# Build a tic-tac-toe game on the command line where two human players
# can play against each other and the board is displayed in between
# turns
# Think about how you would set up the different elements within the
# game... What should be a class? Instance variable? Method? A few
# minutes of thought can save you from wasting an hour of coding.
# Build your game, taking care to not share information between classes
# any more than you have to.

# Classes: Board, Player
# Methods: create_board, take_turn, check_input,

class Board
  def initialize
    # playable spaces are at [8], [10], [12], [22], [24], [26], [36], [38], [40]
    @default_board = {space_one: " 1 ", space_two: " 2 ", space_three: " 3 ",
                      space_four: " 4 ", space_five: " 5 ", space_six: " 6 ",
                      space_seven: " 7 ", space_eight: " 8 ", space_nine: " 9 "}
    @win_rows      = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @win_cols      = [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
    @win_diags     = [[1, 5, 9], [3, 5, 7]]
    @win           = false
  end



  def draw_board
    ind = 1

    @default_board.each do |space, pos|
      if ind % 3 == 0
        puts "#{pos}"
      else
        print "#{pos}"
      end

      ind += 1
    end
  end


  def update_board(player, position)

    if player == " X "
      case position
        when 1
          @default_board[:space_one]   = " X "
        when 2
          @default_board[:space_two]   = " X "
        when 3
          @default_board[:space_three] = " X "
        when 4
          @default_board[:space_four]  = " X "
        when 5
          @default_board[:space_five]  = " X "
        when 6
          @default_board[:space_six]   = " X "
        when 7
          @default_board[:space_seven] = " X "
        when 8
          @default_board[:space_eight] = " X "
        when 9
          @default_board[:space_nine]  = " X "
      end
    elsif player == " O "
      case position
        when 1
          @default_board[:space_one]   = " O "
        when 2
          @default_board[:space_two]   = " O "
        when 3
          @default_board[:space_three] = " O "
        when 4
          @default_board[:space_four]  = " O "
        when 5
          @default_board[:space_five]  = " O "
        when 6
          @default_board[:space_six]   = " O "
        when 7
          @default_board[:space_seven] = " O "
        when 8
          @default_board[:space_eight] = " O "
        when 9
          @default_board[:space_nine]  = " O "
      end
    end

    draw_board
  end


  def make_a_move(player)
    @player = player
    print "Player #{@player} make a move: "
    @move = gets.chomp.to_i

    update_board(@player, @move)
  end


  def check_rows(player)
    if @default_board[:space_one]   == player &&
       @default_board[:space_two]   == player &&
       @default_board[:space_three] == player

        @win = true

        puts "Congratulations! Player#{player}won!"
    elsif @default_board[:space_four] == player &&
          @default_board[:space_five] == player &&
          @default_board[:space_six]  == player

            @win = true

            puts "Congratulations! Player#{player}won!"
    elsif @default_board[:space_four] == player &&
          @default_board[:space_five] == player &&
          @default_board[:space_six]  == player

            @win = true

            puts "Congratulations! Player#{player}won!"
    else
      puts "No wins yet!"
    end
  end


  def play
    draw_board

    while @win == false
      make_a_move(" X ")
      check_rows(" X ")
      make_a_move(" O ")
      check_rows(" O ")
    end
  end

end

board = Board.new
board.play
