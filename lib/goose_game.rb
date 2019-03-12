require_relative 'boot.rb'

class GooseGame
  def initialize
    @board = []
  end

  def run
    while true
      request = gets.chomp
      case
        when request == 'exit' then command = Exit.new
        when request.start_with?('add player') then command = AddPlayer.new(request)
        else command = Help.new
      end
      puts command.execute
    end
  end
end

if __FILE__ == $0
  gg = GooseGame.new
  gg.run
end