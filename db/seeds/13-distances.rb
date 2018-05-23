Distance.delete_all
services_count = Service.for_hotel.count
Hotel.all.each do |h|
  places = Place.select(:id, "earth_distance(ll_to_earth(#{h.latitude}, #{h.longitude}), ll_to_earth(latitude, longitude)) as length")
                .where("earth_box(ll_to_earth(#{h.latitude}, #{h.longitude}), 2000) @> ll_to_earth(latitude, longitude)")
                .order("earth_distance(ll_to_earth(#{h.latitude}, #{h.longitude}), ll_to_earth(latitude, longitude))")
                .limit(2)
  places.each { |p| Distance.create(hotel_id: h.id, place_id: p.id, length: p.length) }
  3.times do
    HotelsService.create(hotel_id: h.id, service_id: Faker::Number.between(0, services_count - 1))
  end
end
