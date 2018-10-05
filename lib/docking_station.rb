require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
   fail 'No bikes available' if nobikes
   @bike
   @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full
    @bike = bike
    @bikes.push(bike)
    "Bike Docked"
  end

  private

  def full
    @bikes.count == DEFAULT_CAPACITY
  end

  def nobikes
    @bikes.count == 0
  end

end
