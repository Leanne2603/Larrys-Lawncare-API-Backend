class Suburb < ApplicationRecord
  belongs_to :postcode
  has_many :bookings
end
