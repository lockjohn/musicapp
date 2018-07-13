module BandsHelper
  def edit_band_link(band)
  "<a href='#{edit_band_url(band)}'>edit band</a>".html_safe
  end

  def new_band_link
    "<a href='#{new_band_url}'>add new band</a>".html_safe
  end

  def band_index_link
    "<a href='#{bands_url}'>band index</a>".html_safe
  end

  def show_band_link(band)
    "<a href='#{band_url(band)}'>show band page</a>".html_safe
  end
end
