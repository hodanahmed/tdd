require_relative 'bike'
class DockingStation
attr_reader :cycle, :amount_of_bikes
def initialize(amount_of_bikes = 20)
  @bikes = []
  @amount_of_bikes = amount_of_bikes
  @cycle = Bike.new
end

def return_bike
  if @bikes.count == @amount_of_bikes
    raise 'Docking Station full'
  end
  @bikes.push(@cycle)
end

def show_bikes
  @bikes
end

def release_bike
  if @bikes.count == 0
    raise 'No more Bikes'
  end
 @bikes.pop(@cycle)
  end
end
