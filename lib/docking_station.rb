require_relative 'bike'

class DockingStation

attr_reader :bike

def initialize
  @bikes = []
end

  def release_bike(bike = Bike.new)
    @bike = bike
  end

  def dock(bike)
    @bike = bike
  end

  def count

  end

end
