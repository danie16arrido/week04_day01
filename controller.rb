require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rock_paper_scissors.rb')

get "/" do
  erb(:home)
end
