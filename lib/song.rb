require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.create(name)
    new(name).tap(&:save) # implicitly bound to Song
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def artist=(artist)
    artist.add_song(self)
  end

end