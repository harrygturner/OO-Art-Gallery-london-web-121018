class Painting
  attr_accessor :gallery
  attr_reader :title, :price, :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    self.class.all << self
  end

  def self.total_price
    tot_price = 0
    self.all.each {|painting| tot_price += painting.price}
    tot_price
  end

end
