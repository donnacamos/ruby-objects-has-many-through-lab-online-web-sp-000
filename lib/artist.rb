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
    song = Song.new(name, self, genre)
    self.songs.last
  end
  
  def songs 
    Song.all.select do |song| 
      song.artist == self 
    end
  end 
    
  def genre 
    songs.map do |song|  
      song.genre  
    end 
  end 
  
  
  
 def self.all 
    @@all 
  end 
end 
   