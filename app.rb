require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    forward_name = params[:name]
    backward_name = forward_name.reverse
    "Hello #{backward_name}!"

end
