class Pokemon
  attr_accessor :name, :type, :db 
  attr_reader :id
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    @db.execute(sql, self.name, self.type, self.db)
    @id = @db.execute("SELECT last_insert_rowid() FROM pokeman")[0][0]
  end

end
