class ArtistInstrumentsController < ApplicationController
  def new
    @artist_instrument = ArtistInstrument.new
  end

  def create 
    @artist_instrument = ArtistInstrument.create(params.require(:artist_instrument).permit(:artist_id, :instrument_id))

    if @artist_instrument.valid?
      flash[:success] = "Association created successfully!"
      redirect_to @artist_instrument.artist
    else
      flash[:error] = "Association not created, try again"
      redirect_to new_artist_instrument_path
    end
  end
end
