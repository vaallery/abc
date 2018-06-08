class HotelsController < ApplicationController
  def show
    @hotel = Hotel.find params[:id]
    np = NearestPlaces.new(@hotel)
    @subway_stations = np.call('subway', 1000, 3)
    @airports = np.call('airport', 100_000, 3)
  end
end
