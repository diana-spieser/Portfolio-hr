class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :services]

  def home

    @evgenia = Evgenium.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @evgenia.geocoded.map do |evgenium|
      {
        lat: evgenium.latitude,
        lng: evgenium.longitude
      }
    end
  end

  def about
  end

end
