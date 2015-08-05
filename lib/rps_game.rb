def rps_game(player_1, player_2 = false)

  outcome = ""

  if player_2 == false
    outcome = "Player 2 Wins!"
  end

  case
    when player_1 == "rock" && player_2 == "rock"
      outcome = "Tie!"
    when player_1 == "scissors" && player_2 == "scissors"
      outcome = "Tie!"
    when player_1 == "paper" && player_2 == "paper"
      outcome = "Tie!"
    when player_1 == "rock" && player_2 == "scissors"
      outcome = "Player 1 Wins!"
    when player_1 == "scissors" && player_2 == "paper"
      outcome = "Player 1 Wins!"
    when player_1 == "paper" && player_2 == "rock"
      outcome = "Player 1 Wins!"
    when player_1 == "scissors" && player_2 == "rock"
      outcome = "Player 2 Wins!"
    when player_1 == "paper" && player_2 == "scissors"
      outcome = "Player 2 Wins!"
    when player_1 == "rock" && player_2 == "paper"
      outcome = "Player 2 Wins!"
  end

  outcome

end
