require_relative('../db/sql_runner')

class Burger

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @name = options['name']
    @price = options['price'] if options['price'].to_i
    @eatery_id = options['eatery_id'].to_i if options['eatery_id'].to_i
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


end
