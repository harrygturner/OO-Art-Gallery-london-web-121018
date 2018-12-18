class Gallery
  attr_reader :name, :city
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}.uniq
  end

  def artists_name
    artists.map {|artists| artist.name}
  end

  def most_expensive_painting
    paintings.max_by {|painting| painting.price}
  end

end
