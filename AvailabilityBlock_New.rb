class AvailabilityBlock
  attr_accessor :service_provider_name, :date, :start_time, :end_time, :is_available, :start_datetime

  def initialize(service_provider_name, date, start_time, end_time, is_available, start_datetime)
    @service_provider_name = service_provider_name
    @date = date
    @start_time = start_time
    @end_time = end_time
    @is_available = is_available
    @start_datetime = start_datetime
  end
end
