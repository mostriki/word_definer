require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:Show_exception, false)

describe('the word path', {:type => :feature}) do
  it('processes the word entry') do
    visit('/')
    fill_in('wordInput', with: 'Unicorns')
    click_button('Go!')
    expect(page).to have_content('Unicorns')
  end

  it('processes the word entry') do
    visit('/')
    fill_in('wordInput', with: 'Unicorn')
    click_button('Go!')
    click_link('Unicorn')
    fill_in("definitionInput", with: 'A mythical animal.')
    click_button('Go!')
    expect(page).to have_content('A mythical animal.')
  end

  # it('deletes the a word') do
  #   visit('/')
  #   fill_in('wordInput', :with => 'Unicorn')
  #   fill_in('definitionInput', :with => 'A mythical animal.')
  #   click_button('Go!')
  #   fill_in('deleteInput', :with => 'Unicorn')
  #   visit('/definition/1')
  #   expect(page).to have_no_content('Unicorn')
  # end
end

    # save_and_open_page
