class Patient
  
  @@all = [] 
  
  attr_accessor :name, :appointment, :doctor  
  
  def initialize(date) 
    @name = name 
    @appointment = [] 
    @doctor = [] 
    @@all << self 
  end 
  
  def new_appointment(date, doctor) 
    self.date.create do |appointment| 
      appointment.doctor = self 
    end 
  end 
  
  def appointments 
    @appointment 
  end 
  
  def doctors 
    @appointment.collect do |appointment|  
      appointment.doctor  
    end 
  end 
  
  def self.all 
    @@all 
  end 
  
    
end 
      
  