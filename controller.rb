require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/eatery')
require_relative('models/burger')
require_relative('models/deals')
