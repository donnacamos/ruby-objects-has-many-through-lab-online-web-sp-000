class Patient
  
  attr_accessor :name, :appointment, :doctor  
  
  def initialize(date) 
    @name = name 
  end 
  
  def new_appointment(doctor, date) 
    Appointment.new(self, doctor, date) 
    end 
  end 
  
  def appointments 
    Appointment.all.select do |appointment| 
      appointment.patient == self 
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
      
  