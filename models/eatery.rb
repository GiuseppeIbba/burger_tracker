require_relative('../db/sql_runner')

class Eatery

  attr_reader :id
  attr_accessor :name, :location

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @name = options['name']
    @location = options['location']
  end


  def self.find(id)
    sql = "SELECT * FROM eateries
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Eatery.new( results.first )
  end

  def self.all()
    sql = "SELECT * FROM eateries"
    values = []
    eateries = SqlRunner.run(sql, values)
    result = eateries.map { |eatery| Eatery.new( eatery )}
    return result
  end

  def self.delete_all
    sql = "DELETE FROM eateries"
    values = []
    SqlRunner.run(sql, values)
  end

  def burgers()
    sql = "SELECT * FROM burgers
    WHERE eatery_id = $1"
    values = [@id]
    burgers = SqlRunner.run(sql, values)
    result = burgers.map { |burger| Burger.new(burger)}
  end

  def save()
    sql = "INSERT INTO eateries
    (name, location)
    VALUES
    ($1, $2)
    RETURNING *"
    values = [@name, @location]
    eatery_hash = SqlRunner.run(sql, values)
    @id = eatery_hash.first()['id'].to_i
  end


  def update()
    sql = "UPDATE eateries SET
    (name, location) =
    ($1, $2)
    WHERE id = $3"
    values = [@name, @location, @id]
    SqlRunner.run(sql, values)
  end





end
