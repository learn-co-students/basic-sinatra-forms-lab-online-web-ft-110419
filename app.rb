require 'sinatra/base'

class App < Sinatra::Base
  
  get '/newteam' do 
    erb :newteam
  end

  post '/team' do
    @new_team = params.map{|k,v| v}
    erb :team
  end
end
