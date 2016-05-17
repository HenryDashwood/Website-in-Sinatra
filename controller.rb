require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative 'models/word_formatter'
require 'json'

get '/' do
  erb :about_me
end

get '/address' do
  content_type(:json)
  word_formatter = WordFormatter.new({address: '3 ARGYLE HOUSE', building: 'CODEBASE', postcode: 'e13 zqf', phone: '0131558030'}).upcase_postcode
  return word_formatter.to_json
end

get '/camel/:string' do
  word_formatter = WordFormatter.new('code clan')
  return word_formatter.camelcase(params[:string])
end


