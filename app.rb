require 'sinatra'
require 'erb'


get '/' do
  'hello!'
end

get '/secret' do
  'this message has been REDACTED'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index, :locals => {:name => params[:name]}
end
