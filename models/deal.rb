require_relative('../db/sql_runner')

class Deal


  attr_reader :id, :burger_id
  attr_accessor :label, :type, :day, :price

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @label = options['label']
    @type = options['type']
    @day = options['day']
    # @price = options['price'].to_i if options['price'].to_i
    @burger_id = options['burger_id'] if options['burger_id']
  end



  def self.find(id)
    sql = "SELECT * FROM deals
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Deal.new( results.first )
  end

  def self.find_by_day(day)
    sql = "SELECT deals.label, deals.type FROM deals
    WHERE deals.day = $1"
    values = [day]
    results = SqlRunner.run( sql, values )
    return Deal.new( results.first )
  end

  def self.find_by_label(label)
    sql = "SELECT deals.day, deals.type FROM deals
    WHERE deals.label = $1"
    values = [label]
    results = SqlRunner.run( sql, values )
    return Deal.new( results.first )
  end


  def self.all()
    sql = "SELECT * FROM deals"
    values = []
    deals = SqlRunner.run(sql, values)
    result = deals.map { |deal| Deal.new( deal )}
    return result
  end

  def self.delete_all
    sql = "DELETE FROM deals"
    values = []
    SqlRunner.run(sql, values)
  end

  def save()
    sql = "INSERT INTO deals
    (label, type, day, burger_id)
    VALUES
    ($1, $2, $3, $4)
    RETURNING *"
    values = [@label, @type, @day, @burger_id]
    deal_hash = SqlRunner.run(sql, values)
    @id = deal_hash.first()['id'].to_i
  end


  def update()
    sql = "UPDATE deals SET
    (label, type, day, burger_id) =
    ($1, $2, $3, $4)
    WHERE id = $5"
    values = [@label, @type, @day, @burger_id, @id]
    SqlRunner.run(sql, values)
  end





  # 'SELECT deals.day, deals.label, deals.type, burgers.name FROM deals
  # INNER JOIN burgers ON deals.burger_id = burgers.id
  # INNER JOIN eateries ON burgers.eatery_id = eateries.id
  # WHERE eateries.id = 1;
  #


end
