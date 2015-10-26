require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pg'
require_relative 'controllers/main_nav_controller'
require_relative 'controllers/genres_controller'
require_relative 'controllers/links_controller'
require_relative 'models/db_base' #has to be defined before category because category uses db_base
require_relative 'models/genre'
require_relative 'models/link'



get '/' do
  
  erb :home
end