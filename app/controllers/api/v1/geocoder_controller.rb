class Api::V1::GeocoderController < ApiController
  def index
    return render json: 'error' if params[:address].blank?
    render json: Geocoder.coordinates(params[:address])
  end
end
