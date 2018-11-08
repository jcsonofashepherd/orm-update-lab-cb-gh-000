require_relative "../config/environment.rb"

class Student

  attr_accessor :id, :name, :grade

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(name, grade, id = nil)
    
  end

  def create_table
    sql =  <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def drop_table
    DB[:conn].execute("DROP TABLE IF EXISTS students")
  end

  def save
  end

  def create(name, grade)
    self.new(name, grade)
  end

  def new_from_db
  end

  def find_by_name
  end

  def update
  end

end
