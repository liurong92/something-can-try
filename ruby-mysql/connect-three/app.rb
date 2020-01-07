require 'sinatra'
require 'active_record'
require 'mysql2'
require 'yaml'
require_relative 'models/user'
require_relative 'models/product'
require_relative 'models/order'

before do
  db_config = YAML.load(File.open('config/database.yml').read)
  ActiveRecord::Base.establish_connection(db_config)
end

get '/' do
  erb :index
end

post '/userProfile' do
  @products = Product.all
  @user = User.find_by(userName: params['userName'])
  if params['password'] == '' || @user == nil
    redirect back
  else
    if @user[:password] == params['password']
      erb :userProfile
    else
      redirect back
    end
  end
end

get '/register' do
  erb :register
end

post '/createUser' do
  user = User.new(
      userName: params['userName'],
      password: params['password'],
      trueName: params['trueName'],
      userAge: params['userAge'],
      email: params['email'],
      address: params['address']
  )

  if user.save
    user.save
    redirect '/'
  else
    redirect back
  end
end

post '/update' do
  @products = Product.all
  @user = User.find_by(id: params['userId'])

  @user.update(password: params['password'],
               trueName: params['trueName'],
               address: params['address'],
               userAge: params['userAge'],
               address: params['address']
  )
  erb :userProfile
end

post '/add' do
  @user = User.find_by(id: params['userId'])
  @products = Product.all
  order = Order.new(
      orderName: params['productName'],
      orderPrice: params['productPrice'],
      user_id: params['userId']
  )
  order.save
  erb :userProfile
end

get '/userOrder' do
  @userId = params['userId']
  @orders = Order.all.where(user_id: @userId)
  erb :userOrder
end

get '/deleteOrder' do
  Order.delete(params['orderId'])
  @userId = params['userId']
  @orders = Order.all.where(user_id: @userId)
  redirect back
end

get '/returnUserProfile' do
  @products = Product.all
  @user = User.find(params['userId'])
  erb :userProfile
end

get '/findUserOrder' do
  @findUserOrders = User.joins(:orders).select('*')
  erb :findUserOrder
end

get '/delete' do
  @findUserOrders = User.joins(:orders).select('*')
  Order.delete(params['userId'])
  erb :findUserOrder
end

error Sinatra::NotFound do
  erb :notFound
end

after do
  ActiveRecord::Base.connection.close
end