require_relative('../models/eatery')
require_relative('../models/burger')
require('pry')

get '/eateries' do
  @eateries = Eatery.all()
  erb( :"eateries/index" )
end

get '/eateries/new' do
  erb( :"eateries/new" )
end

get '/eateries/:id/show' do
  @eatery = Eatery.find(params[:id])
  erb( :"eateries/show" )
end

get '/eateries/:id' do
  @eatery = Eatery.find( params[:id] )
  erb( :"eateries/show" )
end

post '/eateries' do
  @eatery = Eatery.new( params )
  @eatery.save
  erb( :"eateries/create" )
end

get '/eateries/:id/edit' do # edit
  @eatery = Eatery.find( params[:id] )
  erb( :"eateries/edit" )
end

post '/eateries/:id' do # update
  Eatery.new( params ).update
  redirect to '/eateries'
end

post '/eateries/:id/delete' do # delete
  eatery = Eatery.find( params[:id] )
  eatery.delete()
  redirect to '/eateries'
end
