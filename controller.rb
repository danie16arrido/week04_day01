require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rock_paper_scissors.rb')

get "/" do
  erb(:home)
end

get '/play/:player1/:player2' do
  player1 = params[:player1]
  player2 = params[:player2]
  result = RockPaperScissors.new(player1, player2)
  @game_result = result.get_winner_pretty()
  erb(:result)
end

get '/rules' do
  erb(:rules)
end

get '/play/start' do
  erb(:play)
end
