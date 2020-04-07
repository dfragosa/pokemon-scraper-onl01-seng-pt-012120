class Pokemon
  attr_accessor :name, :type, :db 
  attr_reader :id
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save
    sql = <<-SQL
    INSERT INTO pokeman (name, type, db)
    VALUES (?,?,?)
    SQL
    @db.execute(sql, self.name, self.type, self.db)
    @id = @db.execute("SELECT ")
  end

end
