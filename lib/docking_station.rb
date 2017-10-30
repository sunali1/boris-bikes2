require_relative 'bike'

class DockingStation

attr_reader :bike

def initialize
  @bikes = []
end

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    fail "Docking station is full" if @bike
    @bike = bike
  end

  def count

  end

end
