require_relative('../db/sql_runner')

class burger_deals

  attr_reader :id, :burger_id, :deal_id

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @burger_id = options['burger_id'].to_i if options['burger_id'].to_i
    @deal_id = options['deal_id'].to_i if options['deal_id'].to_i
  end

  
