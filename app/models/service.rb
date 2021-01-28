class Service < ApplicationRecord
  belongs_to :category
  has_many :bookings
  validates :service_name, :price, presence: true
end
