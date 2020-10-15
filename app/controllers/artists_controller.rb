class ArtistsController < ApplicationController
  before_action :find_artist, only: :show

  def show
  end

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :age, :title))

    if @artist.valid?
      flash[:success] = "Artist created successfully!"
      redirect_to @artist
    else
      flash[:error] = "Artist not created, try again"
      redirect_to new_artist_path
    end
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end
end
