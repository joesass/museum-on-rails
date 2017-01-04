class MediaController < ApplicationController
  before_action :set_medium, only: [:show, :edit, :update]

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.create(medium_params)
    redirect_to @medium
  end

  def show
  end

  def index
    @media = Medium.all
  end

  def edit
  end

  def update
    if @medium.update(medium_params)
      redirect_to medium_path(@medium)
    else
      render :edit
    end
  end

  private

  def set_medium
    @medium = Medium.find(params[:id])
  end

  def medium_params
    params.require(:medium).permit(:name)
  end
end
