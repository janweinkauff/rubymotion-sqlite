rubymotion-sqlite
=================

An ActiveRecord style Sqlite Library using FMDB, extracted from internal project


check lib/sqlite.rb for the code


# running the current code base


    $ rake
    ....

    (main)>> 
    s = Sqlite.new
    s.createTable
    s.insert_data('AA')
    s.insert_data('AB')
    s.insert_data('HELLO')
    s.insert_data('WORLD')

    results= s.find(:all)


# what works
* create table
* insert data
* find(:first), find(:last),find(:all)
* result is a array of hash with the key corresponding to the column name

# todo
* data is not persisted beyond a session
* no exception handling, so if you have any sqlite constraints like unique then gives error, or if table already exists
* data type conversion 
* need to plan for migration
* pre-populated data
* currently table structure is hardcoded in the class, hope I would get models to extend from the base model, with least duplication of the code






# Word Games


# To Do

* get word lists
* write a script to build the sqlite database
* search by word length and letters included
* anagram builder