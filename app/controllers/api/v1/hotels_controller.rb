class Api::V1::HotelsController < ApiController
  def index
    @hotels = Hotel.preload(distances: { place: :metro_line },
                            hotels_services: :service).page(params[:page])
  end

  def show; end
end
