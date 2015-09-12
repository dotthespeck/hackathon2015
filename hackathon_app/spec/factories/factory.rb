FactoryGirl.define do

  # factory :user do
  #   first_name "Marlon"
  #   last_name "Snugglebunny"
  #   sequence :email do |n|
  #     "marlon#{n}@thedog.com"
  #   end
  #   role "Candidate"
  #   password "marlonthedog"
  # end

  factory :flyer do

  organization_id 1
  image 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRR2fVLdEWusMJJaz-B_iatfdRFxQdpYl5xhVSxkFTTRmMWCQgdntOoG8jW'
  address '387 Congress Street, Portland, ME 04101'
  contact 'Very C. Person'
  contact_email 'verycharitableperson@gmail.com'
  category 'Family'
  date '06-04-2015'
  time '7:00PM'
  tags '#event #great'
  information "This event will be great and a wonderful event. It'll be great"

  end

  # factory :review do
  #   review "This book is amazing. A. Maze. Ing. I would read it many many more times. You should read it too."
  #   user
  #   book
  # end

end
