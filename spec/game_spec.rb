require 'spec_helper'
require 'pry'

describe Game do
  before do
    @game = Game.new
    @board = @game.board
  end

  context "completely empty in the beginning" do
    it 'has a board of 9 cells' do
      expect(@board.count).to eq 9
    end
  end

  context "first player makes move" do
    it 'updates the right cell when a move is made' do
      @game.move('x', 4)
      expect(@game.get_cell_at(4)).to eq 'x'
    end
    it 'uses proper casing when making a move' do
      @game.move('X', 4)
      expect(@game.get_cell_at(4)).to eq 'x'
    end
  end

  context "display board" do
    it 'displays a board with the proper moves inserted' do
      @game.move('x', 4)
      expect(@game.display_board).to include "x"
    end
  end

  context "second players turn" do
  end

  context "second player makes move" do
    it "rejects a move to an already occupied cell" do
      @game.move('x', 4)
      expect{@game.move('y', 4)}.to raise_error(InvalidMoveError)
    end
  end

  context "game over" do
    it "knows it is over" do
      @game.move('x', 0)
      @game.move('x', 1)
      @game.move('x', 2)
      expect(@game.is_over?).to eq true
    end

    it "knows the winner" do
    end

    it "knows if there was a tie" do
    end
  end


  #it 'is empty at start' do
  #  expect(@board.join("").empty?).to be true
  #end

  #it 'updates board with a players move' do
  #  @current_player = @player1
  #  @game.update_board(@current_player, 4)
  #  binding.pry
  #  expect(@board[3]).to eq 'x'
  #end
end

# completely empty in the beginning
# first player makes move
# update and display board
# second players turn
#second player makes move
