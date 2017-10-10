# in app.rb

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Helo Battle!'
  end

  run! if app_file == $0
end
