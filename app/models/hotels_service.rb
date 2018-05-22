class HotelsService < ApplicationRecord
  belongs_to :service
  belongs_to :hotel
end
