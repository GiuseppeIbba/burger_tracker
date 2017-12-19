require_relative('../models/deal')
require_relative('../models/burger')


get '/deals' do
  @deals = Deal.all()
  erb( :"deals/index" )
end

get '/deals/new' do
  @burgers = Burger.all()
  erb(:"deals/new")
end

get '/deals/:id' do
  @deal = Deal.find( params[:id] )
  erb(:"deals/show")
end

post '/deals' do
  @deal = Deal.new( params )
  @deal.save
  erb(:"deals/create")
end
