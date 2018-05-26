class LandingPageController < ApplicationController
  def index
    @hotels = Hotel.active.main_offers.limit(6)
  end
end
