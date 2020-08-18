require 'sinatra'
require "sinatra/json"

set :port, 5000
get '/' do
  json greeting: 'Hello world!'
end
