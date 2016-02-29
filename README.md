# Datafy
An ORM inspired by Ruby on Rails' Active Record. Datafy uses complex SQL queries to communicate with a SQLite Database. By manipulating the data retrieved, Datafy creates objects with simplified methods (shown below) for effective communication between developer and database.

##Setup
Datafy uses [SQLite3](https://www.sqlite.org/) as its database. Please follow the link and download SQLite3 before using Datafy.

Currently, the file, `pokemon.sql` is for demo purposes. To link to your database, change the variables: `POKEMON_SQL_FILE` and `POKEMON_DB_FILE` in `db_connection.rb` under the lib folder.

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

Datafy is very easy to use. Simply require the 'datafy.rb' file in your project. Extend the 'SQLObject' class on a model. Then, use any of the methods above!
