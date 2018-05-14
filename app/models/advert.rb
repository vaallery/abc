class Advert < ApplicationRecord
  has_many :room_adverts
  has_many :rooms, through: :room_adverts
end
