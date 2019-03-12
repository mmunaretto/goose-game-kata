require 'command/help'

RSpec.describe Help do
  context 'command not found' do
    it 'return help online' do
      help = Help.new

      expect(help.execute).to include('add player [player_name]')
      expect(help.execute).to include('move [player_name] [roll_one], [roll_two]')
      expect(help.execute).to include('move [player_name]')
    end
  end
end