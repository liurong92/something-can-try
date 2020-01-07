require 'sinatra'
require 'mysql2'


get '/' do

  con = Mysql2::Client.new(:host => 'localhost', :username => 'root', :database => 'testDB')
  @data = con.query('select * from people')

  erb :index
end