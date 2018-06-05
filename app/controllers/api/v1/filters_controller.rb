class Api::V1::FiltersController < ApiController
  def index
    direction_id = params[:direction] || 1
    places = Place.where(main_direction_id: direction_id).active
    filter = {
      stations: places.where(place_category: 'station').pluck(:name, :slug),
      airports: places.where(place_category: 'airport').pluck(:name, :slug),
      accomodations: HotelCategory.all_active,
      services: Service.for_hotel
    }
    render json: filter.to_json
  end
end
