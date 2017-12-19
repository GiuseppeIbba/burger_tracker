require_relative('../models/deal')


get '/deals' do
@deals = Deal.all()
erb( :"deals/index" )
end

get '/deals/:id' do
  @deal = Deal.find( params[:id] )
  erb(:"deals/show")
end
