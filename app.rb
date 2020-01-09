require 'sinatra/base'

class App < Sinatra::Base # is either called the server || the controller

    get '/new-team-form' do # easier name change
        erb :new_team_form # This is where the real form resides.
    end

    post '/team' do # in the controller we set instance variables equal to params for the user in the post '/team' method
        @name = params["name"]
        @coach = params["coach"]
        @pg = params["pg"]
        @sg = params["sg"]
        @sf = params["sf"]
        @pf = params["pf"]
        @center = params["c"]
        erb :team
    end

end