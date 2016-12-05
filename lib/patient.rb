class Patient

  attr_reader :name
  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    @appointments << appointment_instance
    appointment_instance.patient = self
  end

  # def appointments
  #   @appointments.collect do |appointment_instance|
  #     appointment_instance
  #   end
  # end

  def doctors
    @appointments.collect do |appointment_instance|
      appointment_instance.doctor
    end
  end
end
