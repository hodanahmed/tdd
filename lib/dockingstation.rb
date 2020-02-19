require_relative 'bike'
class DockingStation
DEFAULT_CAPACITY = 20
attr_reader :cycle, :amount_of_bikes
def initialize(amount_of_bikes = DEFAULT_CAPACITY)
  @bikes = []
  @amount_of_bikes = amount_of_bikes
  @cycle = Bike.new
end

def return_bike
  if full?
    raise 'Docking Station full'
  end
  @bikes.push(@cycle)
end

def show_bikes
  @bikes
end

def release_bike
if empty?
    raise 'No more Bikes'
  end
 @bikes.pop(@cycle)
  end

private
def full?
  @bikes.count == @amount_of_bikes
end

def empty?
  @bikes.count == 0
end
end
