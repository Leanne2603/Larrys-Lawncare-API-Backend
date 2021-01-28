class Booking < ApplicationRecord
  belongs_to :suburb
  belongs_to :service
  validates :first_name, :last_name, :phonenumber, :email, :address, :booking_date, presence: true
end