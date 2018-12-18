class Artist
  attr_reader :name, :years_experience
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    tot_experience = 0
    self.all.each {|artist| tot_experience += artist.years_experience}
    tot_experience
  end

  def num_of_paintings
    paintings.length
  end

  def paintings_per_year
    num_of_paintings.to_f/self.years_experience
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings_per_year}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
