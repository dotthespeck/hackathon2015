class Organization < ActiveRecord::Base

 has_many :flyers
#
# validates :organization, presence: true
# validates :image, presence: true
# validates :address, presence: true
# validates :contact, presence: true
# validates :category, presence: true
end
