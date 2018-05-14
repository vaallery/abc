class RoomAdvert < ApplicationRecord
  belongs_to :advert
  belongs_to :room
end
