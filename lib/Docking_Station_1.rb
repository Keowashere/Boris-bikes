require_relative 'Bike'

class DockingStation < Bike
  attr_reader :bike
  def initialise


  end

  def release_bike
    bike = Bike.new
  end

  def dock(bike)
    @bike = bike
  end



end
