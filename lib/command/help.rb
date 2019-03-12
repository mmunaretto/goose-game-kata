class Help
  def execute
    <<~HELP
      Available command are:
        add player [player_name]
        move [player_name] [roll_one], [roll_two]
        move [player_name]
        exit

      Please type a valid command
    HELP
  end
end