require_relative('../db/sql_runner')


class Deal


  attr_reader :id, :burger_id, :eatery_id
  attr_accessor :label, :type, :day

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @label = options['label']
    @type = options['type']
    @day = options['day']
    @eatery_id = options['eatery_id'].to_i if options['eatery_id'].to_i
    @burger_id = options['burger_id'].to_i if options['burger_id'].to_i

  end



  def self.find(id)
    sql = "SELECT * FROM deals
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Deal.new( results.first )
  end

  def self.find_deals_by_eatery(id)
    sql = "SELECT * FROM deals WHERE eatery_id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return results.map { |deal| Deal.new( deal )}
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

  def delete()
    sql = "DELETE FROM deals
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all
    sql = "DELETE FROM deals"
    values = []
    SqlRunner.run(sql, values)
  end

  def save()
    sql = "INSERT INTO deals
    (label, type, day, eatery_id, burger_id)
    VALUES
    ($1, $2, $3, $4, $5)
    RETURNING *"
    values = [@label, @type, @day, @eatery_id, @burger_id]
    deal_hash = SqlRunner.run(sql, values)
    @id = deal_hash.first()['id'].to_i
  end


  def update()
    sql = "UPDATE deals SET
    (label, type, day, eatery_id, burger_id) =
    ($1, $2, $3, $4, $5)
    WHERE id = $6"
    values = [@label, @type, @day, @eatery_id, @burger_id, @id]
    SqlRunner.run(sql, values)
  end





end
