require('sinatra')
require('sinatra/reloader')
require('./lib/rps_game')

get("/") do
  erb(:index)
end

get("/one_player") do
  erb(:one_player)
end

get("/two_players") do
  erb(:two_players)
end

get("/results") do
  @player_one = params.fetch("player_1")
  params['player_2'] = false
  if params.fetch("player_2")
    @player_two = params.fetch("player_2")
  else
    @player_two = false
  end
  rps_game(@player_one, @player_two)
end
