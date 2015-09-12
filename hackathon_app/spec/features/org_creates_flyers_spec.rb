require "rails_helper"

feature "Org adds a flyer" do
# %q(
#
#    As an organization
#    I want to post a flyer
#    So I can share what our organization is doing with others
#
#    Acceptance Criteria
#
#   [x] I must provide a flyer image
#   [x] I must provide an address
#   [x] I must provide a contact person
#   [] I must provide a category from a list of categories
#   [x] I must be presented with errors if I fill out the form incorrectly
# )


 scenario "Org adds a flyer" do

   flyer = FactoryGirl.build(:flyer)
   organization = FactoryGirl.build(:organization)

  visit root_path

  click_on "Add flyer"

  fill_in "Name", with: organization.name
  fill_in "Address", with: organization.address
  fill_in "Contact Name", with: organization.contact
  fill_in "Contact Email", with: organization.contact_email
  fill_in "Category", with: organization.category
  fill_in
  click_on "Add flyer"

  expect(page).to have_content "Flyer added successfully"
  end
end
