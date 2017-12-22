require_relative('../models/eatery')
require_relative('../models/burger')
require('pry')
#INDEX
get '/eateries' do
  @eateries = Eatery.all()
  erb( :"eateries/index" )
end
#NEW
get '/eateries/new' do
  erb( :"eateries/new" )
end
#SHOW
get '/eateries/:id' do
  @eatery = Eatery.find( params[:id] )
  erb( :"eateries/show" )
end
#CREATE
post '/eateries' do
  @eatery = Eatery.new( params )
  @eatery.save
  erb( :"eateries/create" )
end
#EDIT
get '/eateries/:id/edit' do 
  @eatery = Eatery.find( params[:id] )
  erb( :"eateries/edit" )
end
#UPDATE
post '/eateries/:id' do
  Eatery.new( params ).update
  redirect to '/eateries'
end
#DELETE
post '/eateries/:id/delete' do
  eatery = Eatery.find( params[:id] )
  eatery.delete()
  redirect to '/eateries'
end
