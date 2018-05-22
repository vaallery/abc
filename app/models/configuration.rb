class Configuration < ApplicationRecord
  belongs_to :rooms
  has_many :configurations_services, dependent: :destroy
  has_many :services, through: :configurations_services
  belongs_to :stay_time
end
