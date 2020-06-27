class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    self.galleries.map { |gallery| gallery.city }.uniq
  end

  def paintings_per_year_experience
    self.paintings.length.fdiv(self.years_experience) 
  end

  def self.total_experience
    self.all.reduce(0) { |sum, artist| sum += artist.years_experience }
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.paintings_per_year_experience }
  end

  def self.all 
    @@all
  end

end
