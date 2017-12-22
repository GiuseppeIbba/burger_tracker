require_relative('../models/deal')
require_relative('../models/burger')
require_relative('../models/eatery')


get '/deals' do
  if params["eatery_id"]
    @deals = Deal.find_deals_by_eatery(params["eatery_id"])
  else
    @deals = Deal.all()
  end
  @eateries = Eatery.all()
  @burgers = Burger.all()
  erb( :"deals/index" )
end

get '/deals/new' do
  @eateries = Eatery.all()
  @burgers = Burger.all()
  erb(:"deals/new")
end

get '/deals/:id' do
  @deals = Deal.find_deals_by_eatery( params[:id] )
  erb(:"deals/show")
end

post '/deals' do
  @deal = Deal.new( params )
  @deal.save
  erb(:"deals/create")
end

get '/deals/:id/edit' do # edit
  @eaterties = Eatery.all()
  @burgers = Burger.all()
  @deal = Deal.find( params[:id] )
  erb( :"deals/edit" )
end

post '/deals/:id' do # update
  Deal.new( params ).update
  redirect to '/deals'
end

post '/deals/:id/delete' do # delete
  deal = Deal.find( params[:id] )
  deal.delete()
  redirect to '/deals'
end
