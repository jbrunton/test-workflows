require 'sinatra'
require "sinatra/json"

set :port, 5000
set :bind, '0.0.0.0'

get '/' do
  json greeting: 'Hello world!'
end
