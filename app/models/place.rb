class Place < ApplicationRecord
  # belongs_to :place_category
  belongs_to :metro_line
  # belongs_to :direction

  enum place_category: {
    subway: 'subway',
    airport: 'airport',
    station: 'station',
    depot: 'depot'
  }
end
