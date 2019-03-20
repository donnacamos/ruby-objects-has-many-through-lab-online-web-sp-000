class Appointment 
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  attr_accessor :date, :doctor, :patient 
  
  def initialize(date) 
    @date = date 
    @doctor = doctor 
    @patient = patient 
    @@all << self 
  end 
  
end 