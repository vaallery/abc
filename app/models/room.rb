class Room < ApplicationRecord
  belongs_to :hotel
  has_many :configurations, dependent: :destroy
  has_many :rooms_services
  has_many :services, through: :rooms_services
  has_many :room_adverts
  has_many :adverts, through: :room_adverts
  accepts_nested_attributes_for :configurations, allow_destroy: true
  # has_many :images, as: :imageable, dependent: :destroy
  mount_uploaders :images, ImageUploader
  # serialize :images, JSON
end
