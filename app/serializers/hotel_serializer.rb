class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :latitude, :longitude, :slug,
             :rating, :review_count, :min_price, :images, :hotel_category

  has_many :places do
    object.distances
  end

  has_many :services

  def hotel_category
    object.hotel_category&.slug
  end
end
