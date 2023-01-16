class EvgeniaController < ApplicationController
  def index
    @evgenia = Evgenium.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @evgenia.geocoded.map do |evgenium|
      {
        lat: evgenium.latitude,
        lng: evgenium.longitude,
        marker_html: render_to_string(partial: "marker"),
        info_window: render_to_string(partial: "info_window", locals: {evgenium: evgenium})
      }
    end
  end

  def new
    @evgenium = Evgenium.new
  end

  def create
    @evgenium = Evgenium.new(evgenium_params)
    if @evgenium.save
    redirect_to @evgenium, notice: 'evgenium was successfully created.'
    else
    render :new
    end
  end

  def show
    @evgenium = Evgenium.find(params[:id])
  end

  def update
    @evgenium = Evgenium.find(params[:id])
    if @evgenium.update(evgenium_params)
    redirect_to @evgenium, notice: 'evgenium was successfully updated.'
    else
    render :edit
    end
  end

  def destroy
    @evgenium = Evgenium.find(params[:id])
    @evgenium.destroy
    redirect_to evgenia_url, notice: 'evgenium was successfully destroyed.'
  end

  private

  def evgenium_params
    params.require(:evgenium).permit(:address)
  end
end
