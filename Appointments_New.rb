class Appointment
  attr_reader :date, :start_time, :service_name, :client_name, :service_provider_name

  def initialize(date, start_time, service_name, client_name, service_provider_name)
    @date = date
    @start_time = start_time
    @service_name = service_name
    @client_name = client_name
    @service_provider_name = service_provider_name
  end

end