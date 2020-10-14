require_relative 'Bike'

class DockingStation < Bike
  attr_reader :bike
  def initialise


  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end



end
