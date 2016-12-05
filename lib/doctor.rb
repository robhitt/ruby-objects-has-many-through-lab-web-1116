class Doctor

  attr_reader :name
  attr_accessor :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    @appointments << appointment_instance
    appointment_instance.doctor = self
  end

  def patients
    @appointments.collect do |appointment_instance|
      appointment_instance.patient
    end
  end
end
