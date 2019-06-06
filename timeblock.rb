
class Timeblock
  attr_accessor :start_datetime, :length
  def initialize(start_datetime, length)
    @start_datetime = start_datetime
    @length = length
  end
end