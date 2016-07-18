class Tunr < Sinatra::Base
  configure do
	Mongoid.load! "#{File.dirname(__FILE__)}/config/mongoid.yml"
  end


  # General route actions
  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

end

