class Service < ApplicationRecord
  has_many :hotel_services
  has_many :hotels, through: :hotel_services
  has_many :room_services
  has_many :rooms, through: :room_services
  has_many :configuration_services
  has_many :configurations, through: :configuration_services

  scope :for_hotel, ->() { where(for_hotel: true, active: true, archive: false).order(name: :asc)}
  scope :for_room, ->() { where(for_room: true, active: true, archive: false).order(name: :asc)}
  scope :for_configuration, ->() { where(for_configuration: true, active: true, archive: false).order(name: :asc)}
end
