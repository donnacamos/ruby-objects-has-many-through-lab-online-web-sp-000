class Patient
  
  attr_accessor :name, :appointment, :doctor 
  
  @@all = [] 
  
  def initialize(date) 
    @name = name 
    @@all << self 
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
    Appointment.all.map do |appointment| 
      appointment.doctor  
    end 
  end 
  
  def self.all 
    @@all 
  end 
  
    
end 
      
  