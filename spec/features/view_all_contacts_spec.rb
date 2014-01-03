require 'spec_helper'

feature 'View all the Contacts', %q(
As an admin
I want to review contact inquiries
So that I can respond or take action) do 
# Acceptance Tests
# I can see a list of all contact inquiries
  
  scenario 'Admin views all the contact inquiries' do
    visit root_path
    click_link 'View Inquiries'

    expect(page).to have_content('Listing contacts')
  end


  
end