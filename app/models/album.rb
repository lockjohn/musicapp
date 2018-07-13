class Album < ApplicationRecord

  belongs_to :band

  validates :band, :title, :year, presence: true
  validates :title, uniqueness: {scope: :band_id}

  after_intialize :set_defaults

  def set_defaults
    self.live ||= false
  end

end
