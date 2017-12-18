require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('controllers/eateries_controller.rb')
require_relative('controllers/burgers_controller.rb')
require_relative('controllers/deals_controller.rb')


get '/' do
  "Hello World"
  erb(:index)
end
