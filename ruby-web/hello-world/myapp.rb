require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

get '/hello' do
  erb :hello_name
end