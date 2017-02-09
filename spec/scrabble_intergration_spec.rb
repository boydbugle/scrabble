require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the title case path', {:type => :feature}) do
      it('processes the user entry and returns it title cased') do
        visit('/')
        fill_in('scrab', :with => 'SUN')
        click_button('Send')
        expect(page).to have_content(3)
      end
    end
