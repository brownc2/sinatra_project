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

get'/named-cat' do 
p params 
@name = params[:name]
@color = params[:color]  
@adorable = params[:adorable]
  erb(:index)
  end




