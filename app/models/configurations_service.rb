class ConfigurationsService < ApplicationRecord
  belongs_to :service
  belongs_to :configuration
end
