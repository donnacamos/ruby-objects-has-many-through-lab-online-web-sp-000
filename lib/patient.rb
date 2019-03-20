class Patient
  
  attr_accessor :name, :appointment, :doctor  
  
  def initialize(date) 
    @name = name 
  end 
  
  def new_appointment(doctor, date) 
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
      
  