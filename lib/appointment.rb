class Appointment 
  @@all = [] 
  
  attr_accessor :date, :doctor, :patient 
  
  def initialize(date) 
    @date = date 
    @doctor = doctor 
    @patient = patient 
    @@all << self 
  end 
  
   def self.all 
    @@all 
  end 
  
  
  
end 