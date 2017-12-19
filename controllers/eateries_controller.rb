require_relative('../models/eatery')

get '/eateries' do
  @eateries = Eatery.all()
  erb( :"eateries/index" )
end

get '/eateries/new' do
  erb( :"eateries/new" )
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
