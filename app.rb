require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = params[:name]
    @roles = ['Coach', 'Point Guard', 'Shooting Guard', 'Small Forward', 'Power Forward', 'Center']
    @players = params.values[1..-1]
    erb :team
  end

end
