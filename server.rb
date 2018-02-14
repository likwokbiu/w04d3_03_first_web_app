require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favourites' do
  @fav_links = ['http://www.yahoo.ca', 'http://www.apple.ca', 'http://www.singtao.ca', 'http://www.youtube.ca', 'http://www.google.ca']
  erb :favourites
end
