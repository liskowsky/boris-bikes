require_relative "bike"

class DockingStation
  attr_reader :bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty?
    bikes.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    bikes << bike
    bike
  end

  private

  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty?
  end

end
