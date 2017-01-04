class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def show
  end

  def index
    @artists = Artist.all
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      render :edit
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end

end
