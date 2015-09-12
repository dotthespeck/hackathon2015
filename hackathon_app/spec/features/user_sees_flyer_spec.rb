require 'rails_helper'

feature 'User sees information' do
  #  %q(
  # As a user
  # I want to view a book's details
  # So that I can see a book's details
  #
  # Acceptance Criteria
  #
  # [x] I must be able to get to this page from the flyers index
  # [x] I must see the flyer information
  # )

scenario 'User clicks on flyer' do

  flyer = FactoryGirl.create(:flyer)
    visit root_path
    click_on flyer.image

    expect(page).to have_content flyer.name
    expect(page).to have_content flyer.image
    expect(page).to have_content flyer.address
    expect(page).to have_content flyer.contact
    expect(page).to have_content flyer.contact_email
    expect(page).to have_content flyer.category
    expect(page).to have_content flyer.date
    expect(page).to have_content flyer.time
    expect(page).to have_content flyer.tags
    expect(page).to have_content flyer.information
    end
end
