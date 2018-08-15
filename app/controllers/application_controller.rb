require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/teams' do
      binding.pry
      @team = Team.new(name: params[:team][:name], params[:team][:motto])
      members = params[:team][:members]
      @super_heroes = members.collect do |member_data|
        SuperHero.new(params[:name], params[:power], params[:bio])
      end
      erb :team
    end

end
