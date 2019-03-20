class Artist 
  
  @@all = []
  
  attr_accessor :name, :song, :genre   
  
  def initialize(name)  
    @name = name
    @@all << self 
  end 
  
  def name 
    @name 
  end 
  
  def new_song(name, genre) 
    Song.new(self, name, genre) 
  end
  
  def songs 
    Song.all.select do |song| 
      song.artist == self 
    end
  end 
    
  def genre 
    songs.map do |genre| 
      song.genre == self  
    end 
  end 
  
  
  
 def self.all 
    @@all 
  end 
end 
   