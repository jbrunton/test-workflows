require 'sinatra'
require "sinatra/json"

get '/' do
  json greeting: 'Hello world!'
end
