require './lib/ttt'
require './lib/space'
require './lib/board'

@counter = 1
@player_x_moves = []
@player_o_moves = []
@winner = false

def game_start
  game_board = Board.create(9)
  board_builder
end

def board_builder
  system('clear')
  Board.all.each_with_index do |space, index|
    print " #{space.space_num} "
    if (index + 1) % 3 == 0
      print "\n"
    end
  end
  print "\n"
  if @counter % 2 == 1
    player_x
  else
    player_o
  end


end

def player_x
  puts "Player X, enter the number to mark the space."
  entry = gets.chomp.to_i
  if Board.all[entry-1].space_num.is_a? Integer
     Board.all[entry-1].set_value('X')
     @player_x_moves << entry
     @counter += 1
     check_winner_x
     board_builder
  else
    puts "That is not a valid move. Try again."
    player_x
  end

end

def player_o
  puts "Player O, enter the number to mark the space."
  entry = gets.chomp.to_i
   if Board.all[entry-1].space_num.is_a? Integer
      Board.all[entry-1].set_value('O')
      @player_o_moves << entry
      @counter += 1
      board_builder
  else
    puts "That is not a valid move. Try again."
    player_o
  end
end

def check_winner_x
  puts "checking"
  if @counter >= 5
    Board.winners.each do |combo|
      combo.each do |ele|
        win_counter = 0
        @player_x_moves.each do |xpos|
          if xpos == ele
            win_counter +=1
          end
          if win_counter == 3
            puts "Winner for X"
            gets.chomp
            @winner = true
          end
        end

      end
    end
  end


end


game_start


