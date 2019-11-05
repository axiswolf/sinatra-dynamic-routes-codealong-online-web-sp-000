require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    # needs to get 200 Code
    # display a 'goodbye' and a name
    # is not hard-coded
    erb :goodbye
  end

  get '/multiply/:num1/:num2' do
    # gets a 200 status Code
    # displays the product of the two numbers in the route
    # is not hard-coded
    erb :multiply
  end
end
