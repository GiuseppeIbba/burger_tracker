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

get '/burgers/:id/edit' do # edit
  @eateries = Eatery.all()
  @burger = Burger.find( params[:id] )
  erb( :"burgers/edit" )
end

post '/burgers/:id' do # update
  Burger.new( params ).update
  redirect to '/burgers'
end

post '/burgers/:id/delete' do # delete
  burger = Burger.find( params[:id] )
  burger.delete()
  redirect to '/burgers'
end
