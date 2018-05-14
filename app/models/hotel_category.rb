class HotelCategory < ApplicationRecord
  has_many :hotels, dependent: :restrict_with_error
end
