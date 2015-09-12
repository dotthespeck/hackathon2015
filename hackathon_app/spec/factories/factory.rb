FactoryGirl.define do

  factory :organization do
    name 'Very charitable group'
    address '387 Congress Street, Portland, ME 04101'
    contact 'Very C. Person'
    contact_email 'verycharitableperson@gmail.com'
    category 'Family'
  end

  factory :flyer do
    name 'Awesome upcoming event'
    image 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRR2fVLdEWusMJJaz-B_iatfdRFxQdpYl5xhVSxkFTTRmMWCQgdntOoG8jW'
    address '387 Congress Street, Portland, ME 04101'
    contact 'Very C. Person'
    contact_email 'verycharitableperson@gmail.com'
    category 'Family'
    date '06-04-2015'
    time '7:00PM'
    tags '#event #great'
    information "This event will be great and a wonderful event. It'll be great"

    organization
  end

  # factory :review do
  #   review "This book is amazing. A. Maze. Ing. I would read it many many more times. You should read it too."
  #   user
  #   book
  # end

end
