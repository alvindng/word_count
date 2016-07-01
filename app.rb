require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/word_count')
also_reload('.lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @sentence = params.fetch('sentence')
  @result = @word.word_count(@sentence)
  erb(:results)
end
