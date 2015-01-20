require 'pry-byebug'

require_relative '../lib/conway'

describe Cell do

  before(:all) do
    @cell1 = Cell.new(1, 3, 4)
    @cell2 = Cell.new(1, 2, 3)
    @cell3 = Cell.new(0, 3, 3)
    @cell4 = Cell.new(1, 4, 3)
    @cell5 = Cell.new(1, 2, 4)
    @cell6 = Cell.new(0, 4, 4)
    @cell7 = Cell.new(1, 2, 5)
    @cell8 = Cell.new(0, 3, 5)
    @cell9 = Cell.new(0, 4, 5)
  end

  describe '#initialize' do
    it 'creates new instances of the class Cell' do
    expect(@cell1.class).to eq Cell
    end
  end

  describe '#is_alive?' do
    it 'creates a boolean describing if the cell is alive' do
      expect(@cell1.is_alive?).to eq true
    end
  end

  describe '#x' do
    it 'returns the x value' do
      expect(@cell1.x).to eq 3
    end
  end

  describe '#y' do
    it 'returns the y value' do
      expect(@cell1.y).to eq 4
    end
  end

  describe '#get_neighbors' do
    it 'returns a board of neighboring cells' do
      expect(@cell1.get_neighbors).to eq Board.new([@cell2, @cell3, @cell4, @cell5, @cell6, @cell7, @cell8, @cell9])
    end
  end
end

describe Board do

  before(:all) do
    @cell1 = Cell.new(1, 3, 4)
    @cell2 = Cell.new(1, 2, 3)
    @cell3 = Cell.new(0, 3, 3)
    @cell4 = Cell.new(1, 4, 3)
    @cell5 = Cell.new(1, 2, 4)
    @cell6 = Cell.new(0, 4, 4)
    @cell7 = Cell.new(1, 2, 5)
    @cell8 = Cell.new(0, 3, 5)
    @cell9 = Cell.new(0, 4, 5)
    @board = Board.new([@cell1, @cell2, @cell3, @cell4, @cell5, @cell6, @cell7, @cell8, @cell9])
  end

  describe '#initialize' do
    it 'creates a new board instance' do
      expect(@board.class).to eq Board
    end
  end

  describe '#find_cell' do
    it 'returns a cell with the given position' do
      expect(@board.find_cell(2,3)).to eq @cell2
    end
  end
end
