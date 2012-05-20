

class Sqlite
  
def initialize
#todo: add the location of storage    
@db  = FMDatabase.new
@db.open
#@db.getTableSchema("wordlist")
end



def tables
   @tables
end  

def columns
@columns = ["id","word","length"]
end  

def createTable
  #override in the model
# @result = @db.executeUpdate("create table wordlist (id INTEGER PRIMARY KEY, word varchar(20),length int, UNIQUE(word));")
end

def silent_execute(sql)
@result = @db.executeUpdate(sql)
end

def insert_sample_data
@result = @db.executeUpdate("insert into wordlist(word,length) values ( 'SENTHIL', 7)")
#r2=@db.executeQuery("select * from wordlist")
end  



def find(options)
case options
when :first
  log("first")
  sql = "select * from wordlist limit 1"
when :last
  log("last")
  sql = "select * from wordlist order by id DESC limit 1"
when :all
  log("all")
  sql = "select * from wordlist"
else  
end  
  execute(sql)


end  

def create

end  

def save

end

def update

end    

def execute(sql)
command = sql.downcase[0..5].rstrip
case command
when "select"
  log(sql,'SELECT')
  @result = @db.executeQuery(sql)
  
when "create","alter","drop"
  log(sql,'DCL')
  @result = @db.executeUpdate(sql)
when "create","alter","drop"
  log(sql,'DCL')
  @result = @db.executeUpdate(sql)
when "insert"
  log(sql,'DML')
  @result = @db.executeUpdate(sql)
else
  log(sql,"unknown sql")
  @result = @db.executeUpdate(sql)
end
results = []
while @result.next do a={}; a["word"],a["id"],a["length"]=   @result.stringForColumn("word"),@result.stringForColumn('id'), @result.stringForColumn("length"); results << a; end
results
end


def print_results
while( (@result.next != 0)   ) #&& (@result.next != 0)
@columns.each do |column|
puts column , @result.stringForColumn(column)
end
end

end

end