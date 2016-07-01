require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the user input path', {:type=> :feature}) do
  it 'counts the number of occurences a word shows in the user submitted sentence' do
    visit('/')
    fill_in('word', :with => 'peck')
    fill_in('sentence', :with => "If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")
    click_button("Let's see the Count!")
    expect(page).to have_content("2")
  end
end
