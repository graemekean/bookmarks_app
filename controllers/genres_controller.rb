

get '/genres' do
  @genres = Genre.all
  erb :'genres/index'
end

get '/genres/new' do
  @genre = Genre.new()
  erb :'genres/new'
end

post '/genres' do
  @genre = Genre.new(params[:genre])
  @genre.save
  redirect to('/genres')
end

post '/genres/:id/delete' do
  Genre.find(params[:id]).destroy
  redirect to('/genres')
end

get '/genres/:id/edit' do
  @genre = Genre.find(params[:id])

  erb :'genres/edit'

end

post '/genres/:id' do
  @genre = Genre.find(params[:id])
  @genre.update_attributes(params[:genre])
  redirect to("/genres")

end

get '/genres/:id' do
  @links = Links.all
  binding.pry
  @links = @links[:id]
 
  erb :'links/index'

end
