require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:Show_exception, false)

describe('the word path', {:type => :feature}) do
  it('processes the word entry and returns a boolean') do
    visit('/')
    fill_in('wordInput', :with => 'Word')
    fill_in('definitonInput', :with => 'Definition')
    click_button('Go!')
    expect(page).to have_content('Word')
  end
end
