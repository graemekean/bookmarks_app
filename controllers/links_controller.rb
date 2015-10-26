

get '/links' do
  @genres = Genre.all
  @links = Link.all


  erb :'links/index'
end

# get 'links/:id' do
#   @genres = Genre.all
# @links = Link.all.find(params[:id])
# binding.pry

# erb :'links/categories'
# end

get '/links/new' do
  @link = Link.new()
  erb :'links/new'
end

post '/links' do
  @link = Link.new(params[:link])
  @link.save
  redirect to('/links')
end

post '/links/:id/delete' do
  Link.find(params[:id]).destroy
  redirect to('/links')
end

get '/links/:id/edit' do
  @link = Link.find(params[:id])
  erb :'links/edit'
end

post '/links/:id' do
  @link = Link.find(params[:id])
  @link.update_attributes(params[:genre])
  redirect to("/links")

end

