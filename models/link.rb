class Link < DBBase #genre inherits from DBBase

  #model the categories table from the database

  # def initialize(params={})
  #   self.id = params['id']
  #   self.name = params['name']
  # end

  attributes name: :string, url: :string, description: :string

end