require_relative '../boot.rb'

class AddPlayer

  def initialize(command:, board:)
    @player = Player.new(command.delete_prefix('add player '))
    @board = board
  end

  def execute
    if @board.include?(@player)
      "#{@player.name}: already existing player"
    else
      @board << @player
      "players: #{@board.join(', ')}"
    end
  end
end