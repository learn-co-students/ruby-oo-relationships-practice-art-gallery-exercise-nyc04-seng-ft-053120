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

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }
  end

  def cities
    self.galleries.map { |gallery| gallery.city }
  end

  def self.total_experience
    self.all.map { |artist| artist.years_experience }.sum
    # self.all.map(&:years_experience).sum
    # self.all.sum(&:years_experience)
    # self.all.sum { |artist| artist.years_experience }
    # first get all the artists
    #iterate to map over each artist.years_ex
    # return the sum of artist.years_ex
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.paintings.length / artist.years_experience }
    # use years-ex per artist 
    # establish the # of paintings
  end

end

# Artist.all`
#     * Returns an `array` of all the artists

#   * `Artist#paintings`
#     * Returns an `array` all the paintings by an artist

#   * `Artist#galleries`
#     * Returns an `array` of all the galleries that an artist has paintings in

#   * `Artist#cities`
#     * Return an `array` of all cities that an artist has paintings in

#   * `Artist.total_experience`
#     * Returns an `integer` that is the total years of experience of all artists

#   * `Artist.most_prolific`
#     * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

#   * `Artist#create_painting`
#     * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
