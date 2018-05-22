class Service < ApplicationRecord
  has_many :hotels_services
  has_many :hotels, through: :hotels_services
  has_many :rooms_services
  has_many :rooms, through: :rooms_services
  has_many :configurations_services
  has_many :configurations, through: :configurations_services

  scope :for_hotel, -> { where(for_hotel: true, active: true).order(name: :asc) }
  scope :for_room, -> { where(for_room: true, active: true).order(name: :asc) }
  scope :for_configuration, -> { where(for_configuration: true, active: true).order(name: :asc) }
end
