class Api::V1::HotelsController < ApiController
  def index
    @hotels = Hotel.preload(distances: { place: :metro_line }, hotels_services: :service)
    @hotels = FindHotels.new(@hotels).call(params[:filters]) if params[:filters]
    @total_count = @hotels.count
    @hotels = @hotels.page(params[:page])
  end
end
