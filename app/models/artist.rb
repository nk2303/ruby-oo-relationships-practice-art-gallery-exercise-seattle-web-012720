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
    Painting.all.select {|p_obj| p_obj.artist == self}
  end

  def galleries
    self.paintings.map{|p_obj| p_obj.gallery}
  end

  def cities
    self.galleries.map{|g_obj| g_obj.city}
  end

  def total_experience
    num = 0
    Artist.all.each{|a_obj| num += a_obj.years_experience}
    num
  end

  def self.most_prolific
    # all paintings / years of experience, find max, return artist
    most_paintings = Artist.all.map{ |a_obj|
      ((a_obj.paintings.length).to_f/(a_obj.years_experience).to_f)
    }.max
    Artist.all.find {|a_obj| ((a_obj.paintings.length).to_f/(a_obj.years_experience).to_f) == most_paintings}
  end

  def create_painting(title, price, gallery)
    p_obj = Painting.new(title, price, gallery, self)
  end

end
