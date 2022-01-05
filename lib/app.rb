require 'sinatra'

require 'Sinatra/Reloader' if development?

get '/' do
  "Hello World"
end

get '/name' do
  "My name is Haydn"
end

get '/name/age' do
  "My name is Haydn and i'm 29"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end   

get '/named-cat' do
  p params 
  @name = params[:name]
  erb(:index)
end  

