get '/about_me' do
  
  erb :'/about_me'
end

get '/contact' do
  
  erb :'/contact'
end


get '/bookmarks' do
  @genres = Genre.all
  @links = Link.all
  
  
  erb :'/bookmarks'
end

get '/projects' do
  
  erb :'/projects'
end