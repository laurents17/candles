require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do # this part is optional, so that something comes up when you don't specify a URI
  File.read(File.join('public', 'index.html'))
end

get '/input' do
    @age=params[:age].to_i
    erb :candles
end
