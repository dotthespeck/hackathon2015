require "rails_helper"

feature "User sees all flyers" do
#    %q(
#   As a user
#   I want to view flyers
#   So that I can see what is happening in the community
#
#   Acceptance Criteria
#
#   [] I must see the name of each organization
#   [] I must see the flyer for each event
#   [] I must see the address for the organization
#   [] I must see the contact person for the organization
#   [] I must see the information for the contact person for the organization
#   [] I must see the category for the organization
# )

  scenario "User sees all the flyers" do

    flyer = FactoryGirl.create(:flyer)

    visit root_path

    expect(page).to have_content "#{flyer.name}"
    expect(page).to have_content "#{flyer.image}"
    expect(page).to have_content "#{flyer.contact}"
    expect(page).to have_content "#{flyer.contact_email}"
    expect(page).to have_content "#{flyer.category}"
    end
  end

#   scenario "Most recent posted first" do
#
#     book = FactoryGirl.create(:book)
#     second_book = FactoryGirl.create(:book)
#
#     visit root_path
#     (second_book.title).should appear_before(book.title)
#
#   end
# end
