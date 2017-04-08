class Patient
  attr_accessor :name, :appointments, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint)
    @appointments << appoint
    appoint.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
