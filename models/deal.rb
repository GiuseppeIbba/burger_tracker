require_relative('../db/sql_runner')

class Deal

  def initialize(options)
    @id = options['id'].to_i if options['id'].to_i
    @label = options['label']
    @day = options['day']
    @burger_id = options['burger_id']
  end

  def save()
    sql = "SELECT * FROM burgers
    (label, day, burger_id)
    VALUES
    ($1, $2, $3)
    RETURNING *"
    values = [@label, @day, @burger_id]
    burger_hash = Sqlrunner.run(sql, values)
    @id = burger_hash.first()['id'].to_i
  end


  def update()
    sql = "UPDATE burgers SET
    (label, day, burger_id) =
    ($1, $2, $3)
    WHERE id = $4"
    values = [@label, @day, @burger_id, @id]
    SqlRunner.run(sql, values)
  end
end
