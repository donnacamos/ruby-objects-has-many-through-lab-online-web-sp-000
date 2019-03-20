class Doctor 

  attr_accessor :name, :appointment, :patient 
  
  @@all_doc = [] 
  
  def initialize(name) 
    @name = name 
    @@all_doc << self 
  end 
  
  def self.all 
    @@all_doc 
  end 
  
  def new_appointment(appointment)
    @appointments << appointment 
    apointment.doctor = self 
  end 
  
  def appointments 
    @appointments.select do |doctor| 
      doctor.appointment 
  end 
end 
  
  def patients
    @appointments.collect do |appointment| 
      appointment.patient 
    end 
  end 
end 