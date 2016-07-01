require('capybara/rspec')
require('./lib/word_count.rb')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
