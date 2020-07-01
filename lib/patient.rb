class Patient 
  
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def appointment 
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end 
  
   def patients
    self.appointments.collect {|appointment| doctor.patient}
  end

  
end 