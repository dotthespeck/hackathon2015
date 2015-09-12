require "rails_helper"

feature "Org signs up for site" do

  scenario "Org provides valid information" do
    organization = FactoryGirl.build(:organization)

    visit root_path
    click_on "Sign up: Organization"

    fill_in "Name", with: organization.name
    fill_in "Address", with: organization.address
    fill_in "Contact", with: flyer.contact
    fill_in "Contact Email", with: flyer.contact_email
    fill_in "Category", with: organization.category
    click_on "Sign up"

  #  expect(page).to have_content "You're All Aboard!"
  end
end
