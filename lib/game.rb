require_relative 'player'

class Game
  attr_accessor :board

  # WINNGING_COMBOS = [
  #                     [@board[0], @board[1], @board[2]], [@board[3], @board[4], @board[5]], [@board[6], @board[7], @board[9]],
  #                     [@board[0], @board[3], @board[6]], [@board[1], @board[4], @board[7]], [@board[2], @board[5], @board[8]],
  #                     [@board[0], @board[4], @board[8]], [@board[2], @board[4], @board[6]]
  #                   ]

  def initialize
    @board = Array.new(9, '')
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = ""
  end

  def play
    @current_player = @player1
    display_board
    puts "You're player 1, pick a space 1-9 starting top left, ending bottom right"
    move = @current_player.make_move
    update_board(@current_player, move)
    switch_turns
  end

  def display_board
    puts "   #{@board[0]} |    #{@board[1]} |    #{@board[2]}"
    puts "_________________"
    puts "   #{@board[3]} |    #{@board[4]} |    #{@board[5]}"
    puts "_________________"
    puts "   #{@board[6]} |    #{@board[7]} |    #{@board[8]}"
  end

  def update_board(player, spot)
    if @board[spot - 1].empty?
      if player == @player1
        @board[spot - 1] = 'x'
      elsif player == @player2
        @board[spot - 1] = 'o'
      end
    else
      puts "That spot is already taken, try again!"
    end
    display_board
  end

  def switch_turns
    if @current_player == @player1
      @current_player = @player2
    elsif @current_player == @player2
      @current_player == @player1
    end
    puts "#{@current_player.name}, it's you're turn. Pick a spot!"
  end
end

# @game = Game.new
# @game.play
