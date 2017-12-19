require_relative('../db/sql_runner')


class Burger

  attr_reader :id, :eatery_id
  attr_accessor :name, :price

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @name = options['name']
    @price = options['price'] if options['price'].to_i
    @eatery_id = options['eatery_id'].to_i if options['eatery_id'].to_i
  end


  def self.find(id)
    sql = "SELECT * FROM burgers
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Burger.new( results.first )
  end

  def self.all()
    sql = "SELECT * FROM burgers"
    values = []
    burgers = SqlRunner.run(sql, values)
    result = burgers.map { |burger| Burger.new( burger )}
    return result
  end

  def delete()
    sql = "DELETE FROM burgers
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all
    sql = "DELETE FROM burgers"
    values = []
    SqlRunner.run(sql, values)
  end

  def save()
    sql = "INSERT INTO burgers
    (name, price, eatery_id)
    VALUES
    ($1, $2, $3)
    RETURNING *"
    values = [@name, @price, @eatery_id]
    eatery_hash = SqlRunner.run(sql, values)
    @id = eatery_hash.first()['id'].to_i
  end


  def update()
    sql = "UPDATE burgers SET
    (name, price, eatery_id) =
    ($1, $2, $3)
    WHERE id = $4"
    values = [@name, @price, @eatery_id, @id]
    SqlRunner.run(sql, values)
  end

  # def eateries()
  #   sql = "SELECT * FROM eateries
  #   WHERE eateries.id = $1"
  #   values = [@eatery_id]
  #   eateries = SqlRunner.run(sql, values)
  #   result = eateries.map { |eatery| Burger.new(eatery)}
  # end
  #  #
  #  SELECT deals.day, deals.label, deals.type, burgers.name FROM deals
  #  INNER JOIN burgers ON deals.burger_id = burgers.id
  #  INNER JOIN eateries ON burgers.eatery_id = eateries.id
  #  WHERE eateries.id = 1
  #  #
  #  # SELECT burgers.name,
  #  #
  #
  # SELECT burgers.name, burgers.price FROM burgers, eateries
  # WHERE eateries.id;


end
