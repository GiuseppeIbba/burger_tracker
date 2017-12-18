require_relative('../models/eatery')

get '/eateries' do
  @eateries = Eatery.all()
  erb( :"eateries/index" )
end

get '/eateries/:id' do
  @eatery = Eatery.find( params[:id] )
  erb( :"eateries/show" )
end
