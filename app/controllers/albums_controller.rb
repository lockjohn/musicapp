class AlbumsController < ApplicationController

  def new
    @album = Album.new(album_params)
  end

  def created
  end

  def edit
  end

  private
  def album_params
    params.require(:album).permit(:title, :year, :band_id, :live)
  end

end
