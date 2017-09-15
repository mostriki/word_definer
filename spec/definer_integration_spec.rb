require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:Show_exception, false)

describe('the word path', {:type => :feature}) do
  it('processes the word entry') do
    visit('/')
    fill_in('wordInput', :with => 'Unicorn')
    fill_in('definitionInput', :with => 'A mythical animal.')
    click_button('Go!')
    expect(page).to have_content('Unicorn')

  end

  it('processes the word entry') do
    visit('/')
    fill_in('wordInput', :with => 'Unicorn')
    fill_in('definitionInput', :with => 'A mythical animal.')
    click_button('Go!')
    visit('/definition/1')
    expect(page).to have_content('A mythical animal.')
  end
end

    # save_and_open_page
