require_relative './datify.rb'

DBConnection::reset


class Human < SQLObject
  has_many :pokemons, foreign_key: :owner_id
  has_many :houses, foreign_key: :house_id
  finalize!
end

class House < SQLObject
  belongs_to :user, foreign_key: :house_id
  finalize!
end

class Pokemon < SQLObject
  belongs_to :user, foreign_key: :owner_id
  finalize!
end

pokemon = Pokemon.all
puts pokemon
