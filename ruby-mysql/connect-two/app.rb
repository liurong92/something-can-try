require 'sinatra'
require 'active_record'
require 'mysql2'
require 'yaml'
require_relative 'models/user_tb'
require_relative 'models/product_tb'
require_relative 'models/order_tb'

before do
  db_config = YAML.load(File.open('config/database.yml').read)
  ActiveRecord::Base.establish_connection(db_config)
end

get '/' do
  erb :index
end

get '/register' do
  erb :register
end

post '/register' do
  user = UserTb.new(
      userName: params['userName'],
      password: params['password'],
      name: params['name'],
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

get '/userHome' do
  @products = ProductTb.all
  @user = UserTb.find_by!(userName: params['userName'])

  if @user[:password] == params['password']
    erb :userHome
  else
    @isTrue = true
    redirect back
  end
end

post '/update' do
  @products = ProductTb.all
  @user = UserTb.find_by(id: params['id'])
  @user.update(password: params['password'],
               name: params['name'],
               email: params['email'],
               address: params['address']
  )

  erb :userHome
end

get '/logout' do
  redirect '/'
end

# get '/product' do
#   @products = ProductTb.all
#   erb :product
# end

post '/addToOrder' do

  order = OrderTb.new(
      orderName: params['productName'],
      orderPrice: params['productPrice'],
      user_tb_id: params['id']
  )
  order.save

  redirect back
end

get '/order' do
  @orders = OrderTb.where(user_tb_id: params['userId']).all
  erb :order
end

get '/inputUserId' do
  erb :inputUserId
end

get '/findOrderByUserId' do

  # @findOrderByUserId = UserTb.find_by_sql("select * from user_tbs inner join order_tbs on user_tbs.id='#{params['UserId']}' and order_tbs.user_tb_id='#{params['UserId']}'")

  @findOrderByUserId = UserTb.joins(:order_tbs)
                           .where('order_tbs.user_tb_id' => params['UserId'])
                           .where('user_tbs.id' => params['UserId'])
                           .select('*')

  erb :findOrderByUserId
end

after do
  ActiveRecord::Base.connection.close
end