class Artist
  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select { |painting| painting.artist.name == name }
  end

  def galleries
    paintings.map(&:gallery)
  end

  def cities
    galleries.map(&:city).uniq
  end

  def self.total_experience
    self.all.reduce(0) { |sum, artist| sum + artist.years_experience }
  end

  def self.most_prolific
    Artist.all.max_by { |artist| artist.paintings.length / artist.years_experience }
  end
end
