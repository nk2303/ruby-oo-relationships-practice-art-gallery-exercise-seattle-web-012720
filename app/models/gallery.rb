class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|p_obj| p_obj.gallery == self}
  end

  def artists
    p = Painting.all.select{|p_obj| p_obj.gallery == self}
    p.map{|p_obj| p_obj.artist}
  end

  def artist_names
    self.artists.map{|a_obj| a_obj.name}
  end

  def most_expensive_painting
    ex = self.paintings.map{|p_obj| p_obj.price}.max
    self.paintings.find {|p_obj| p_obj.price == ex}
  end

end