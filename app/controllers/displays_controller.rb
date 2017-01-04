class DisplaysController < ApplicationController
  before_action :set_display, only: [:show, :edit, :update]

  def new
    @display = Display.new
    @artists = Artist.all
    @media = Medium.all
  end

  def create
    @display = Display.create(display_params)
    @display.artist = Artist.find(params[:display][:artist_id])
    @display.medium = Medium.find(params[:display][:medium_id])
    redirect_to @display
  end

  def show
  end

  def index
    @displays = Display.all
  end

  def edit
  end

  def update
    if @display.update(display_params)
      redirect_to display_path(@display)
    else
      render :edit
    end
  end

  private

  def set_display
    @display = Display.find(params[:id])
  end

  def display_params
    params.require(:display).permit(:title, :artist_id, :medium_id)
  end
end
