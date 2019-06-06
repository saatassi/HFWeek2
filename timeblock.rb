
class Timeblock
  attr_accessor :start_datetime, :duration

  def initialize(start_datetime, duration)
    @start_datetime = start_datetime
    @duration = duration
  end

end