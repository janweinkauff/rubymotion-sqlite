

class Sqlite
  
def initialize
#todo: add the location of storage    
@db  = FMDatabase.new
@db.open
@db.getTableSchema("wordlist")
end

def tables
  
end  

r1=db.executeUpdate("insert into wordlist(word,length) values ( 'SENTHIL', 7)")
r2=db.executeQuery("select * from wordlist")


def createTable
db.executeUpdate("create table wordlist (id INTEGER PRIMARY KEY, word varchar(20),length int);")
end


def find(options)
case options
when :first
  log("first")
when :last
  log("last")
when :all
  log("all")


end  

def create

end  

def save

end

def update

end    

def execute(sql)

end

end