class Booking < ApplicationRecord
  belongs_to :suburb
  belongs_to :service
end
