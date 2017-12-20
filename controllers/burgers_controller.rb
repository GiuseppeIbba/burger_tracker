require_relative('../models/burger')
require_relative('../models/eatery')
require('pry')


get '/eateries/:id/burgers' do
  @burgers = Burger.all()
  erb( :"burgers/index" )
end

get '/eateries/:id/burgers/new' do
  @eatery = Eatery.find(params[:id])
  erb( :"burgers/new" )
end

get '/burgers/:id' do
  @burger = Burger.find( params[:id2] )
  erb( :"burgers/show" )
end

post '/eateries/:eatery_id/burgers' do
  @burger = Burger.new(params)
  @burger.save
  erb( :"burgers/create")
end

get '/eateries/:id/burgers/:id2/edit' do # edit
  @eateries = Eatery.all()
  @burger = Burger.find( params[:id2] )
  erb( :"burgers/edit" )
end

post '/eateries/:id/burgers/:id2' do # update
  Burger.new(params).update
  redirect to '/eateries'
end

post '/eateries/:id/burgers/:id2/delete' do # delete
  burger = Burger.find( params[:id2] )
  burger.delete()
  redirect to '/eateries'
end
