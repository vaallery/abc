class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :review_status
end
