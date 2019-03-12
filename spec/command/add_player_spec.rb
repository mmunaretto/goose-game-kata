require 'command/add_player'

RSpec.describe AddPlayer do
  context 'add player' do
    it 'adds one player' do
      board = []
      ap = AddPlayer.new(command: 'add player Pippo', board: board)

      expect(ap.execute).to eq('players: Pippo')
      expect(board.size).to eq(1)
      expect(board).to contain_exactly(Player.new('Pippo'))
    end

    it 'adds more player' do
      board = []
      ap = AddPlayer.new(command: 'add player Pippo', board: board)
      expect(ap.execute).to eq('players: Pippo')

      ap = AddPlayer.new(command: 'add player Pluto', board: board)
      expect(ap.execute).to eq('players: Pippo, Pluto')

      expect(board.size).to eq(2)
      expect(board).to contain_exactly(Player.new('Pippo'), Player.new('Pluto'))
    end
  end

  context 'duplicate player' do
    it 'does not add any player' do
      board = []
      ap = AddPlayer.new(command: 'add player Pippo', board: board)
      expect(ap.execute).to eq('players: Pippo')

      ap = AddPlayer.new(command: 'add player Pippo', board: board)
      expect(ap.execute).to eq('Pippo: already existing player')

      expect(board.size).to eq(1)
      expect(board).to contain_exactly(Player.new('Pippo'))
    end
  end
end