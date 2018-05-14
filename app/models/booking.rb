class Booking < ApplicationRecord
  has_many :booking_configurations
  has_many :configurations, through: :booking_configurations
  belongs_to :booking_status
  has_one :review
end
