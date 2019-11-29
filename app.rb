require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @piglatinized_words = PigLatinizer.new(params[:words])
    erb :results
  end


end
