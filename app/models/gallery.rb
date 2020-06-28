class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
    .uniq
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    paintings.sort_by do |painting|
      painting.price
    end
    .last
  end

end
