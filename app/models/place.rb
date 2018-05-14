class Place < ApplicationRecord
  belongs_to :place_category
  belongs_to :direction
end
