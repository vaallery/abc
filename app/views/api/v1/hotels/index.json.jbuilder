json.array! @hotels do |hotel|
  json.extract! hotel, :id, :name, :address, :latitude, :longitude, :slug,
                :rating, :review_count, :min_price
  json.hotel_category hotel.hotel_category&.slug
  json.images []
  json.places do
    json.array! hotel.distances do |distance|
      json.place_category distance.place&.place_category
      json.name distance.place&.name
      json.distance distance.length
      json.color distance.place&.metro_line&.color
    end
  end
  json.services do
    json.array! hotel.services do |service|
      json.extract! service, :name, :tag
    end
  end
end
