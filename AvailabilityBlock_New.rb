class AvailabilityBlock
  attr_reader :service_provider_name, :date, :start_time, :end_time, :is_available

  def initialize(service_provider_name, date, start_time, end_time, is_available)
    @service_provider_name = service_provider_name
    @date = date
    @start_time = start_time
    @end_time = end_time
    @is_available = is_available
  end
end
