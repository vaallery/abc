class HotelCategory < ApplicationRecord
  has_many :hotels, dependent: :restrict_with_error

  # @return [Array]
  def self.all_active
    @all_active ||= HotelCategory.where(active: true).pluck(:id, :slug, :name)
  end
end
