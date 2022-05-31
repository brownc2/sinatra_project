require "sinatra"
require "sinatra/reloader" if development?

name = "Chris"

get "/" do
  "Hello #{name}"
end

get "/secret" do
  "This is a secret!"
end


get '/cat-random' do
@name = ["Amigo", "Misty", "Almond"].sample
erb(:index)
end

post '/named-cat' do 
p params 
@name = params[:name]
  erb(:index)
  end

get'/cat-form' do 
  erb(:cat_form)
end




