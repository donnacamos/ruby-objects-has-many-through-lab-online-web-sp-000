class Genre 
  
  @@all = [] 
  
  attr_reader :name, :genre 
  attr_accessor :song  
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def songs 
    Song.all.select do |song| 
      song.genre == self 
    end 
  end
  
  def artists 
    Song.map do |song|  
      song.artist == self  
    end 
  end 
  
  def self.all 
    @@all 
  end
  
end 
    