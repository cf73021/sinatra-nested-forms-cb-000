require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end

    post '/pirates' do
      attributes = params[:pirate]
      @pirate = Pirate.new(attributes[:name], attributes[:weight], attributes[:height])
       @ships = attributes[:ships].collect do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
       erb :"pirates/show"
    end

  end
end
