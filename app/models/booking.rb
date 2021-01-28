class Booking < ApplicationRecord
  belongs_to :suburb
  belongs_to :service

  # using validates to ensure that the important fields are completed and are not null
  validates :first_name, :last_name, :phonenumber, :email, :address, :booking_date, presence: true
end