require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    forward_name = params[:name]
    backward_name = forward_name.reverse
    "#{backward_name}"
  end

  get "/square/:number" do
    num = params[:number]
    squared_num = num.to_i * num.to_i
    "#{squared_num}"
  end

  get "/say/:number/:phrase" do
    num = params[:number]
    user_phrase = params[:phrase]
    num = num.to_i
    num.times { puts user_phrase }
  end

end
