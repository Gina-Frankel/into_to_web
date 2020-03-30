require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  " can't tell you "
end

get '/greeting' do
  " goodbye "
end

get '/secret/very_secret' do
  "still won't tell you"
end

get '/animal' do
  "dog"
end

get '/cat' do
  @cat_name = ["Ruby", "Chairman Meow", "Catrina"].sample
  erb(:index)
end
