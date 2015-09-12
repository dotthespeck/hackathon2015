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

   flyer = FactoryGirl.create(:flyer)
   organization = FactoryGirl.create(:organization)

  visit root_path

  click_on "Add a flyer"

  fill_in "Name", with: flyer.name
  fill_in "Address", with: flyer.address
  fill_in "Contact Name", with: flyer.contact
  fill_in "Contact Email", with: flyer.contact_email
  fill_in "Category", with: flyer.category
  fill_in "Date", with: flyer.date
  fill_in "Time", with: flyer.time
  fill_in "Tags", with: flyer.tags
  fill_in "Information", with: flyer.information
  click_on "Add flyer"

  #expect(page).to have_content "Flyer added successfully"
  end
end
