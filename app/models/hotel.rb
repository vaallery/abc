class Hotel < ApplicationRecord
  has_many :distances
  has_many :places, through: :distances
  has_and_belongs_to_many :services, -> { where(for_hotel: true, active: true) }, join_table: :hotels_services
  has_many :rooms
  accepts_nested_attributes_for :rooms
  accepts_nested_attributes_for :services
  belongs_to :hotel_category
  scope :main_offers, -> { where for_main_page: true }
  scope :active, -> { where active: true }

  mount_uploaders :images, ImageUploader
end
