require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    forward_name = params[:name]
    backward_name = forward_name.reverse
    "#{backward_name}"
  end

end
