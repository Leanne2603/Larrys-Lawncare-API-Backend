class Service < ApplicationRecord
  belongs_to :booking
  belongs_to :category
end
