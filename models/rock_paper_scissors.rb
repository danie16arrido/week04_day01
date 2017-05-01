class RockPaperScissors

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def get_winner()
    outcomes = ["draw", "lose", "win"]
    case @player1
      when "rock"
        check_player2(outcomes)
      when "paper"
        check_player2(outcomes.rotate(-1))
      when "scissors"
        check_player2(outcomes.rotate(-2))
      else
        return nil
      end
  end

  def check_player2(outcomes)
    case @player2
      when "rock"
        return outcomes[0]
      when "paper"
        return outcomes[1]
      when "scissors"
        return outcomes[2]
      else
        return nil
      end
  end

  def get_winner_pretty()
    result = get_winner()
    case result
    when "lose"
      return "Player2's #{@player2} wins" #[@player2, "player2"]
    when "win"
      return "Player1's #{@player1} wins"
    when "draw"
      return "It is a draw!"
    end
  end

end
