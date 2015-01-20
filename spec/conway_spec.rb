require_relative '../lib/conway'


describe Cell do
  it 'create a new cell randomly alive or dead' do
    expect(Cell.new).to eq 0 || 1
  end
end


describe GameOfLife do
  subject(:newgame) {GameOfLife.new([])}
  describe '#initialize' do
    it 'initialize new intance of game of life' do
      expect(newgame).to be_a GameOfLife
    end
  end

  # describe '#grid' do
  #   it 'creates a grid with an array of arrays' do
  #     expect(grid.newgame).to eq [[]]


end
