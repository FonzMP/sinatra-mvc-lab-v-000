require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    puts params
    @piglatinizer = PigLatinizer.new.piglatinize(params[:user_phrase])
    puts @piglatinizer
    erb :piglatinized
  end

end
