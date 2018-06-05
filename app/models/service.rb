class Service < ApplicationRecord
  has_many :hotels_services
  has_many :hotels, through: :hotels_services
  has_many :rooms_services
  has_many :rooms, through: :rooms_services
  has_many :configurations_services
  has_many :configurations, through: :configurations_services

  # @return [Array]
  def self.for_hotel
    @for_hotel ||= Service.for(:for_hotel)
  end

  # @return [Array]
  def self.for_room
    @for_room ||= Service.for(:for_room)
  end

  # @return [Array]
  def self.for_configuration
    @for_configuration ||= Service.for(:for_configuration)
  end

  def self.for(obj)
    Service.where(obj => true, active: true).order(name: :asc).pluck(:id, :tag, :name)
  end
end
