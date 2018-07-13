class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def create
    @band = Band.create!(band_params)
    redirect_to bands_url
  end

  def new
    @band = Band.new
  end

  def edit
    @band = Band.find(params[:id])
  end

  def show
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update!(band_params)
    redirect_to bands_url
  end

  def destroy
    @band = Band.find(params[:id])
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
