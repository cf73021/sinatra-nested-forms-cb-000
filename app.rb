
require './environment'	require './environment'
 module FormsLab	module FormsLab
  class App < Sinatra::Base	  class App < Sinatra::Base
     get '/' do
    # code other routes/actions here	      erb :root
     end
  end
end	    get '/new' do
      erb :'pirates/new'
    end
     post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
       params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
       erb :'pirates/show'
    end

  end
end 
