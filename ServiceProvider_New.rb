class ServiceProvider
  attr_reader :name, :phone_number, :services,:availability

  def initialize(name, phone_number, services, availability)
    @name = name
    @phone_number = phone_number
    @services = services
    @availability = availability
  end

end
