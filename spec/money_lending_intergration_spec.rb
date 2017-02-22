# require('capybara/rspec')
#   require('./app')
#   Capybara.app = Sinatra::Application
#   set(:show_exceptions, false)
#
#   describe('showing money owed to me', {:type => :feature}) do
#     it('processes user entry of how much they would like me toloan them') do
#       visit('/')
#       fill_in('amount', :with => 25000)
#       click_button('Enter')
#       expect(page).to have_content(32500)
#     end
#   end
