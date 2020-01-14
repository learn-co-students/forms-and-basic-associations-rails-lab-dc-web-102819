class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def notes_attributes=(contents)
    contents.each { |string| 
      note = Note.create(content: string)
      self.notes << note
    }
  end


end
