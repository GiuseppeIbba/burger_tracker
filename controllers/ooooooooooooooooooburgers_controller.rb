require_relative('../models/burger')
require_relative('../models/eatery')
require('pry')

§INDEX
get '/eateries/:id/burgers' do
  @burgers = Burger.all()
  erb( :"burgers/index" )
end

get '/eateries/:id/burgers/new' do
  @eatery = Eatery.find(params[:id])
  erb( :"burgers/new" )
end
#
# get '/burgers/:id' do
#   @burger = Burger.find( params[:id2] )
#   erb( :"burgers/show" )
# end

post '/eateries/:eatery_id/burgers' do
  @burger = Burger.new(params)
  @burger.save
  erb( :"burgers/create")
end

get '/eateries/:id/burgers/:id2/edit' do # edit
  @burger = Burger.find( params[:id2] )
  erb( :"burgers/edit" )
end

post '/eateries/:eatery_id/burgers/:id' do # update
  id = params["eatery_id"]
  Burger.new(params).update
  redirect to "eateries/#{id}"
end

post '/eateries/:id/burgers/:id2/delete' do # delete
  burger = Burger.find( params[:id2] )
  burger.delete()
  redirect to '/eateries'
end
