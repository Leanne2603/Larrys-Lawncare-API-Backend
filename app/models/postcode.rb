class Postcode < ApplicationRecord
    has_many :suburbs
    validates :postcode, presence: true
end
