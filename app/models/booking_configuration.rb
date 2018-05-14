class BookingConfiguration < ApplicationRecord
  belongs_to :booking
  belongs_to :configuration
end
