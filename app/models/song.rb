class Song < ActiveRecord::Base
  belongs_to :artist

  delegate :name, to: :artist, prefix: true

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
