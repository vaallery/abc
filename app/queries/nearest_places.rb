class NearestPlaces
  attr_accessor :latitude, :longitude

  def initialize(initial_scope)
    @latitude = initial_scope.latitude
    @longitude = initial_scope.longitude
  end

  def call(place_category, max_distance, limit)
    Place.where(place_category: place_category)
         .select("*, earth_distance(ll_to_earth(#{@latitude}, #{@longitude}), ll_to_earth(latitude, longitude)) as distance")
         .where("earth_box(ll_to_earth(#{@latitude}, #{@longitude}), #{max_distance}) @> ll_to_earth(latitude, longitude)")
         .order("earth_distance(ll_to_earth(#{@latitude}, #{@longitude}), ll_to_earth(latitude, longitude))")
         .limit(limit)
  end
end
