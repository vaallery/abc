class Direction < ApplicationRecord
  has_many :hotel_directions
  has_many :place_directions
  has_many :hotels, through: :hotel_directions
  has_many :places, through: :place_directions
end
