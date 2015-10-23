class Genre < DBBase #genre inherits from DBBase
  attr_accessor :name

  #model the categories table from the database

  # def initialize(params={})
  #   self.id = params['id']
  #   self.name = params['name']
  # end

  attributes name: :string

end