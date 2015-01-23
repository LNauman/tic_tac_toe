require 'spec_helper'
require 'pry'

describe Game do
  before do
    @game = Game.new
    @board = @game.board
  end

  it 'initializes board with 9 empty cells' do
    expect(@board.count).to eq 9
    expect(@board.join("").empty?).to be true
  end

  it 'updates board with a players move' do
    @current_player = @player1
    @game.update_board(@current_player, 4)
    binding.pry
    expect(@board[3]).to eq 'x'
  end
end

# completely empty in the beginning
# first player makes move
# update and display board
# second players turn
#second player makes move
