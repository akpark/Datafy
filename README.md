# Datify
An ORM inspired by Ruby on Rails' Active Record. Active Record Lite uses complex SQL queries to communicate with a SQLite Database. By manipulating the data retrieved, ACL creates objects with simplified methods (shown below) cutting out time/work and easy interaction between developer and database.

##Methods and Associations

* ::find(id)
* ::find_by(params)
* ::where(params)
* ::all
* ::exists?
* #insert
* #update
* #save
* has_many(name, options)
* belongs_to(name, options)
* has_one_through(name, through_name, source_name)
* has_one_through(name, through_name, source_name)

##Usage

Datify is easy to use. Simply require the 'datify.rb' file in your project. Extend the 'SQLObject' class on a model. Then, use any of the methods above!
