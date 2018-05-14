class Configuration < ApplicationRecord
  belongs_to :rooms
  has_many :configuration_services, dependent: :destroy
  has_many :services, through: :configuration_services
  belongs_to :stay_time
end
