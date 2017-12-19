require_relative('../models/burger')
require_relative('../models/eatery')
require('pry')


get '/burgers' do
  @burgers = Burger.all()
  erb( :"burgers/index" )
end

get '/burgers/new' do
  @eateries = Eatery.all()
  erb( :"burgers/new" )
end

get '/burgers/:id' do
  @burger = Burger.find( params[:id] )
  erb( :"burgers/show" )
end

post '/burgers' do
  @burger = Burger.new( params )
  @burger.save
  erb( :"burgers/create")
end
