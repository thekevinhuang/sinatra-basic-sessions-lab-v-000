require_relative 'config/environment'

class App < Sinatra::Base

  configure do
      enable :sessions
      set :session_secret, "top_secret_phrase"
  end

  get '/' do
    @session = session

    erb :index
  end

  post '/checkout'

end
