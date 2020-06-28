class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum do |painting|
      painting.price
    end
  end

end
