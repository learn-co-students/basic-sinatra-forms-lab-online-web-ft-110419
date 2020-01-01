require 'sinatra/base'

class App < Sinatra::Base
	get '/newteam' do 
		erb :newteam
	end
	post '/team' do 
		@team = params[:name]
		@coach = params[:coach]
		@pguard = params[:pg]
		@center = params[:c]
		@sforward = params[:sf]
		@pforward = params[:pf]
		@sguard = params[:sg]
		erb :team
	end
end
