require 'spec_helper'

feature 'Visitor Submits a Contact Inquiry', %q(
As a site visitor
I want to contact the site's staff
So that I can tell them how awesome they are.) do 
# Acceptance Tests
# I must specify a valid email address
# I must specify a subject
# I must specify a description
# I must specify a first name
# I must specify a last name

  scenario 'Visitor submits a valid contact inquiry' do
    visit root_path
    click_link 'Make a Contact'
    fill_in 'Email', :with => 'example@example.com'
    fill_in 'Subject', :with => 'Example Subject'
    fill_in 'Description', :with => 'Example Description'
    fill_in 'First name', :with => 'John'
    fill_in 'Last name', :with => 'Doe'
    click_button 'Create Contact'

    expect(page).to have_content('Contact Successfully Created')
  end

  scenario 'Visitor submits an invalid contact inquiry' do
    visit root_path
    click_link 'Make a Contact'
    fill_in 'Email', :with => 'example@example.com'
    fill_in 'Subject', :with => 'Example Subject'
    fill_in 'Description', :with => 'Example Description'
    fill_in 'First name', :with => 'John'
    fill_in 'Last name', :with => 'Doe'
    click_button 'Create Contact'

    expect(page).to have_content('Contact Successfully Created')
  end

end