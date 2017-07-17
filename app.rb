require 'sinatra'
require 'erb'


get '/' do
  'hello!'
end

get '/secret' do
  'this message has been REDACTED'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :named_cat
end

post '/named-cat' do
  @name = params[:name]
  puts params
  erb :named_cat
end
