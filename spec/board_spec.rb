require 'spec_helper'

describe Board do
  let(:board) {Board.new}

  it 'initializes board with 9 empty cells' do
    expect(board.empty_cell_count).to eq 9
  end

end
