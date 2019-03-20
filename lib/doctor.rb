class Doctor 
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  attr_accessor :name, :new_appointment 
  
  def initialize(name) 
    @name = name 
    @appointments = [] 
    @@all << self 
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