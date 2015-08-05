require('rspec')
require('rpc_game')

describe('rpc_game') do
  it("takes a 'rock' value and wins against 'scissors'") do
    player_1 = "rock"
    player_2 = "scissors"
    expect(rpc_game(player_1, player_2)).to(eq("player 1"))
  end
  it("takes a 'paper' value and loses against 'rock'") do
    player_1 = "paper"
    player_2 = "rock"
    expect(rpc_game(player_1, player_2)).to(eq("player 1"))
  end
  it("takes a 'scissors' value and wins against 'paper'") do
    player_1 = "scissors"
    player_2 = "paper"
    expect(rpc_game(player_1, player_2)).to(eq("player 1"))
  end


  it("takes a 'rock' value and wins against 'paper'") do
    player_1 = "paper"
    player_2 = "rock"
    expect(rpc_game(player_1, player_2)).to(eq("player 2"))
  end
  it("takes a 'rock' value and loses against 'paper'") do
    player_1 = "rock"
    player_2 = "paper"
    expect(rpc_game(player_1, player_2)).to(eq("player 2"))
  end
  it("takes a 'paper' value and loses against 'scissors'") do
    player_1 = "paper"
    player_2 = "scissors"
    expect(rpc_game(player_1, player_2)).to(eq("player 2"))
  end



  it("takes a 'rock' value and ties against 'rock'") do
    player_1 = "rock"
    player_2 = "rock"
    expect(rpc_game(player_1, player_2)).to(eq("tie"))
  end
  it("takes a 'scissors' value and wins against 'scissors'") do
    player_1 = "scissors"
    player_2 = "scissors"
    expect(rpc_game(player_1, player_2)).to(eq("tie"))
  end
  it("takes a 'paper' value and ties against 'paper'") do
    player_1 = "paper"
    player_2 = "paper"
    expect(rpc_game(player_1, player_2)).to(eq("tie"))
  end
end
