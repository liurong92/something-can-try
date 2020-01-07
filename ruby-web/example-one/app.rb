require 'sinatra'
require 'erb'

# set :public, File.dirname(__FILE__) + '/static'

get '/' do
  erb :index
end

post '/showMessage' do
  @userName = params[:userName]
  @password = params[:password]
  erb :show_message
end