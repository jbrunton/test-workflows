require 'sinatra'
require "sinatra/json"
require "sinatra/reloader" if development?
require 'httparty'

set :port, 5000
set :bind, '0.0.0.0'

get '/' do
  json greeting: 'Hello world!'
end

def get_audience
  response = HTTParty.get('http://audience-service:3000')
  JSON.parse(response.body)['audience']
end

def get_greeting
  response = HTTParty.get('http://greeting-service:3000')
  JSON.parse(response.body)['greeting']
end

get '/test' do
  audience = get_audience
  greeting = get_greeting
  json audience: audience, template: greeting, greeting: greeting % audience
end
